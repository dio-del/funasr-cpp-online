# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目是什么

**FunASR**（阿里巴巴达摩院语音工具包）的 C++ 实现，提供一个 **WebSocket 流式 ASR 服务端**，以及发布到 GHCR 的多架构 Docker 镜像（`ghcr.io/dio-del/funasr-wss`）。

仓库分为两层，必须结合起来理解：

| 层 | 路径 | 内容 |
|---|---|---|
| 推理运行时 | `src/onnxruntime/` | 模型推理 + 一套纯 C API（`include/funasrruntime.h`），编译产物为 `libfunasr.so` |
| 服务端应用 | `src/websocket/` | 基于该 API 的 WebSocket 服务端/客户端、Docker 打包与 CI |

模型（Paraformer、FSMN-VAD、CT-Transformer 标点、FST-ITN、ngram-LM 热词偏置）**不在仓库里**，运行时从 ModelScope 拉取或预先挂载。

## 目录结构

```
src/onnxruntime/        libfunasr.so —— 推理引擎
  include/funasrruntime.h   对外 C API（服务端只用这一层接口）
  src/                  paraformer(.cpp)、paraformer-online.cpp、fsmn-vad*.cpp、
                        ct-transformer*.cpp、itn-processor.cpp、bias-lm.cpp、
                        tpass-stream.cpp、tpass-online-stream.cpp、tokenizer、resample
  third_party/          glog、gflags、openfst、yaml-cpp、kaldi、kaldi-native-fbank、jieba
src/websocket/
  CMakeLists.txt        全仓库唯一的 CMakeLists，工程名 "FunASRWebscoket"
  bin/                  服务端 + 客户端可执行文件
    websocket-server-2pass.{h,cpp}   生产用服务端（2pass）
    websocket-server.{h,cpp}         仅离线的老版服务端（会编译，但不进镜像）
    funasr-wss-server-2pass.cpp      main()、TCLAP 参数解析、模型下载
  docker/               Dockerfile + entrypoint.sh + 按架构区分的 ONNX/FFmpeg 目录
  third_party/          已内置的 asio、websocketpp、nlohmann/json
src/test/               funasr_wss_client-10095.py（Python 客户端）+ wav 测试音频
models/                 已下载好的 ModelScope 模型（gitignored），见"模型"一节
build/                  CMake 构建目录（gitignored）
```

## 编译

CMakeLists 在 `src/websocket/`，**不在仓库根目录**。

```bash
# 在仓库根目录执行
cmake -S src/websocket -B build \
  -DCMAKE_BUILD_TYPE=Release \
  -DONNXRUNTIME_DIR=/abs/path/to/onnxruntime-linux-x64-1.14.0 \
  -DFFMPEG_DIR=/abs/path/to/ffmpeg-master-latest-linux64-gpl-shared \
  -DENABLE_PORTAUDIO=OFF
cmake --build build --parallel $(nproc)
```

产物：`build/bin/funasr-wss-server-2pass` 和 `build/src/libfunasr.so`。

几个非常容易踩的坑：

- **`ONNXRUNTIME_DIR` 和 `FFMPEG_DIR` 必须写绝对路径。** CMake 会把相对 `-D` 值相对 `CMAKE_CURRENT_SOURCE_DIR`（即 `src/websocket/`）解析，而不是相对当前工作目录，结果会静默拼成 `src/websocket/src/websocket/...` 这种双层路径。
- `src/websocket/test_glob.cmake` 里同样的坑 —— 那只是一个调试头文件查找逻辑的临时文件，不参与构建。
- `src/websocket/CMakeLists.txt` 在 `${ONNXRUNTIME_DIR}/include` 下找不到 `onnxruntime_run_options_config_keys.h` 时会直接 FATAL_ERROR（该头文件在不同 ONNX Runtime 版本中位置不同，CMake 里用递归 glob 兼容处理）。
- Ubuntu 上需要的系统包：`libopenblas-dev`、`libssl-dev`（OpenSSL 是 `find_package(OpenSSL REQUIRED)`）、`libasound2t64`（portaudio）。`ENABLE_PORTAUDIO=OFF` 可以去掉 portaudio 和麦克风客户端。
- asio 是 standalone 版（不是 boost）：服务端头文件里 `ASIO_STANDALONE 1`。
- `src/websocket/third_party/{asio,websocket,nlohmann}` 已经内置，`FetchContent` 会直接跳过，**配置阶段不需要联网**。
- 上游 `README.md` 提到 `src/websocket/docker/build.sh`，但**这个文件并不存在**。Docker 构建由 CI 驱动（见下文），没有本地脚本。

## 运行服务端

```bash
./build/bin/funasr-wss-server-2pass \
  --download-model-dir /abs/path/to/models \
  --model-dir        damo/speech_paraformer-large-vad-punc_asr_nat-zh-cn-16k-common-vocab8404-onnx \
  --online-model-dir damo/speech_paraformer-large_asr_nat-zh-cn-16k-common-vocab8404-online-onnx \
  --vad-dir          damo/speech_fsmn_vad_zh-cn-16k-common-onnx \
  --punc-dir         damo/punc_ct-transformer_zh-cn-common-vad_realtime-vocab272727-onnx \
  --itn-dir          thuduj12/fst_itn_zh \
  --lm-dir           damo/speech_ngram_lm_zh-cn-ai-wesp-fst \
  --port 10095
```

`src/run_server_2pass.sh` 是一个可用的封装脚本，参数相同（注意它假设你先 `cd src/`）。

**SSL 是隐式开启的**：只有当 `--certfile` 指向的文件在磁盘上真实存在时（`access(..., F_OK)`），服务端才会走 WSS。要跑明文 WS，传空路径或一个不存在的路径即可 —— 默认值 `../../../ssl_key/server.crt` 本来就不存在，所以默认实际就是明文 WS。

### 模型

`--download-model-dir` 既是下载目录也是查找路径。对每个组件，服务端会执行
`python -m funasr.download.runtime_sdk_download_tool --type onnx --quantize True --model-name <name> --export-dir <dir> --model_revision <rev>`。
如果 `--model-name` 对应的路径在磁盘上已存在，就**就地使用**；否则下载到 `<dir>/<namespace>/<model-name>/`。

Docker 镜像里**没有 Python**，所以在容器里下载必然失败（只会打一条 INFO 日志）。模型必须在宿主机预先下载好并 bind-mount 进去。仓库里的 `models/` 目录已经是 ModelScope 的目录结构（`models/damo/...`、`models/thuduj12/...`），README 中挂载到 `/home/funasr/models` 的就是它。

每个模型目录需要包含 `model_quant.onnx`（`--quantize false` 时用 `model.onnx`），以及相应的 `config.yaml`/`am.mvn`。ITN 目录需要 `zh_itn_tagger.fst` + `zh_itn_verbalizer.fst`；LM 目录需要 `TLG.fst`。

## 测试

仓库里没有单元测试框架。测试手段就是用 Python WebSocket 客户端驱动一个真实运行的服务端。

```bash
pip install websockets
python3 src/test/funasr_wss_client-10095.py \
  --audio_in src/test/asr_example.wav \
  --host localhost --port 10095 --mode 2pass
```

- 在 Linux 下**必须显式传 `--audio_in`**（默认值是 Windows 路径 `.\asr_example.wav`）；不传则采集麦克风输入（需装 PyAudio）。
- `--mode` 取值 `offline | online | 2pass`；`2pass` 会同时走在线和离线解码。
- `--send_without_sleep` 不按实时节奏 sleep，用于压测。
- 客户端会在 `--log_dir`（默认 `./asr_logs`）下按会议写入 `events.jsonl` + `meta.json`。
- 测试音频：`src/test/asr_example.wav`（短）、`src/test/qifengle.wav`（约 10 MB）。

## Docker

`src/websocket/docker/Dockerfile` 基于 `ubuntu:26.04`，在镜像内源码编译 OpenSSL 3.6.1，并且**只负责拷贝本地已编译好的二进制 —— 它不编译本项目**。构建上下文必须包含：

```
Dockerfile
funasr-wss-server-2pass          # 来自 build/bin/
funasr-build/                     # 来自 build/ 的 *.so（libfunasr.so、glog、gflags、fst 等）
onnxruntime-<arch>/               # amd64 | arm64
ffmpeg-<arch>/
openssl-3.6.1.tar.gz
```

`src/websocket/docker/onnxruntime-amd64` 和 `ffmpeg-amd64` 是指向仓库根目录解压根的软链接；CI 用 `cp -rL` 重新拷贝成真实目录，因为 `docker build` 无法解析指向上下文之外的软链接。

架构映射：`ARG TARGETARCH` → OpenSSL Configure 的 `linux-x86_64` / `linux-aarch64`，系统库目录则用 `x86_64-linux-gnu` / `aarch64-linux-gnu`。OpenSSL 的默认 `libdir` 在两个平台上不一致，所以 Dockerfile 既传了 `--libdir=lib`，又在拷贝 `.so` 到系统库目录之前**先探测真实路径**。

`src/websocket/docker/entrypoint.sh` 把环境变量（`MODEL_DIR`、`VAD_DIR`、`PORT`、`DECODER_THREAD_NUM` 等）映射成命令行参数，并自动计算线程池大小（`io_thread_num = ceil(cpus/16)`，`model_thread_num = 1`）。注意 entrypoint **不是**镜像的 `ENTRYPOINT` —— Dockerfile 只设了 `WORKDIR /workspace` 并拷贝二进制；README 里的 `docker run` 是显式覆盖了启动命令。

## CI（`.github/workflows/build-image.yml`）

四个 job，各自跑在**原生架构** runner 上（`ubuntu-24.04` 和 `ubuntu-24.04-arm`），不使用 QEMU 模拟：

1. `build-binary` —— 按架构 cmake 配置 + 编译，上传 `funasr-wss-server-2pass` 和 `*.so` 产物。
2. `build-image` —— 组装 Docker 构建上下文，`docker/build-push-action` 推送 `ghcr.io/<owner>/funasr-wss:{amd64|arm64}-latest` 和 `:{sha}-{arch}`（PR 不推送）。
3. `test-image` —— 冒烟测试：拉镜像，用 `--help` 跑一遍二进制，grep 检查 `funasr-wss-server-2pass` 和 `model-dir`。
4. `test-image-e2e` —— 启动容器，等待 10095 端口，用 Python 客户端跑两个 wav，把转写结果作为 artifact 上传。**它不校验识别准确率** —— CER/WER 校验是后续待办。

## 架构详解

### 引擎层（`src/onnxruntime`）

`funasrruntime.h` 是一层扁平的 C API，用不透明的 `FUNASR_HANDLE` / `FUNASR_RESULT` / `FUNASR_DEC_HANDLE` 指针。服务端只通过这一层与引擎交互。

关键入口：

- `FunTpassInit(model_path, thread_num)` → `TpassStream`：持有**离线** ASR 模型、在线标点模型、ITN 模型、离线 VAD。
- `FunTpassOnlineInit(tpass_handle, chunk_size)` → `TpassOnlineStream`：持有**在线** VAD 和流式 Paraformer（`ParaformerOnline`），以及切分音频用的 `chunk_len`。
- `FunTpassInferBuffer(...)` —— 2pass 的核心。每次调用：把 PCM 装进 `Audio` 对象 → `audio->Split(vad_online, chunk_len, ...)` → 逐 chunk 跑在线 ASR → 再对 VAD 切出的整句跑离线 → 加标点 → 可选 ITN。
- `FunASRWfstDecoderInit` / `FunWfstDecoderLoadHwsRes` / `FunWfstDecoderUnloadHwsRes` —— WFST 热词偏置解码器，**每个连接一个实例**。
- `CompileHotwordEmbedding` —— NN 热词路径，同样是每连接一份。

`ASR_TYPE` 决定流水线：`ASR_OFFLINE=0`、`ASR_ONLINE=1`、`ASR_TWO_PASS=2`。客户端 JSON 里的 `mode` 就映射到这三个值。

### 服务端层（`src/websocket/bin/websocket-server-2pass.cpp`）

两个 `asio::io_context`、两个线程池：

- `io_server` —— `io-thread-num` 个线程，跑 websocketpp 事件循环。
- `io_decoder` —— `decoder-thread_num` 个线程，跑实际推理。

每个连接对应一个 `FUNASR_MESSAGE`，保存累积的 PCM、`punc_cache`、连接级互斥锁，以及一个 `asio::io_context::strand`。**strand 是保证单连接解码顺序的关键** —— 解码任务通过 `post()` 投递到 strand 而不是就地执行，避免客户端发送过快导致同一连接的结果乱序。

两条不明显的生命周期规则：

- `msg["access_num"]` 是进行中解码任务的引用计数。`do_decoder` 在每一条退出路径上都要减一（包括提前 return 和异常处理分支）。
- `remove_hdl` **只有在** `access_num == 0 && is_eof == true` 时才释放该连接的解码资源。`check_and_clean_connection()` 在一个 detach 出来的线程上运行，每 5 秒轮询一次，通过 websocketpp 的连接状态（`!= 1` 表示非 open）判断连接是否已死。去掉 `access_num` 这层保护，很容易在 decoder handle 上踩到 use-after-free。

音频按 **800 采样 × 2 字节 = 16kHz 下 100ms** 切块。`do_decoder` 在 `size >= 800*2` 时持续排空缓冲区；剩余部分在最后一个 chunk 一次性 flush。

### WebSocket 协议

**客户端 → 服务端**

- *文本帧* = JSON 控制消息。可识别的字段：`wav_name`、`mode`、`wav_format`、`itn`、`audio_fs`、`chunk_size`、`hotwords`、`svs_lang`、`svs_itn`、`online_index`、`origin_bytes`、`is_speaking`、`is_finished`。
- *二进制帧* = 原始 PCM 字节（经典路径）。
- `mode: "online"` 还额外支持**把 base64 编码的 PCM 放进 JSON 文本帧**的 `origin_bytes` 字段，用 `online_index` 作为客户端帧序号。这是较新的纯 JSON 路径；服务端每收到一帧就会回一个带 `online_index`、`text` 为空的 JSON ACK 帧。
- `chunk_size` 必须是长度为 3 且 `chunk_size[1] != 0` 的数组（默认 `5,10,5`）；且只在首条消息时生效 —— 那时 `FunTpassOnlineInit` 才创建在线流。
- `hotwords` 传的是**字符串**：能解析成 JSON 对象 → 当作 FST 热词映射表；否则 → 当作空格分隔的 NN 热词列表。两条路径永远都会执行，并与服务端的 `--hotword` 文件合并。
- `is_speaking: false` 或 `is_finished: true` 表示一句话结束，剩余缓冲区会以 `is_final = true` flush。

**服务端 → 客户端**（JSON 文本帧）

字段：`text`、`mode`（`2pass-online` / `2pass-offline` / `online`）、`slice_type`（`0` = 句子开始，`1` = 识别中，`2` = 句子结束）、`index`（句子计数器，句末自增）、`timestamp`（毫秒）、`start_time` / `end_time`（仅离线结果带）、`stamp_sents`、`wav_name`、`is_final`。

关键行为：

- **离线结果**（`mode: "2pass-offline"`）会在同一帧里**覆盖** `text`，所以客户端读 `text` 时先看到在线假设、随后被离线结果修正。
- `mode: "online"` 不会输出 `2pass-offline` 文本，但在最后一个 chunk 仍会推进 `index` 并复位 `is_sentence_started`，保证下一句话以 `slice_type: 0` 开始。
- `wav_format` 不是 `pcm`/`PCM` 时，会返回 `"ERROR. Real-time transcription service ONLY SUPPORT PCM stream."`。
