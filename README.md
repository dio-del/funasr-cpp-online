# funasr-cpp-online

---

# 1、本地构建-amd
> 适合：自己改源码、本地调试、没有 GHCR 权限的场景

## 编译流程
```bash
cd funasr-cpp-online/src/websocket
mkdir build
cd build
cmake  -DCMAKE_BUILD_TYPE=release .. -DONNXRUNTIME_DIR=/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/onnxruntime-linux-x64-1.14.0 -DFFMPEG_DIR=/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/ffmpeg-master-latest-linux64-gpl-shared
make -j 16
```

## 打包流程
```bash
cd /mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker
./build.sh
```

## load
```bash
docker load -i funasr-websocket-server.tar
```

## docker 启动流程
```bash
docker run -d \
    -p 10095:10095 \
    --name funasr-wss-amd64 \
    -v /mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/models:/home/funasr/models \
    funasr-websocket-server:latest \
    /workspace/funasr-wss-server-2pass \
    --download-model-dir /home/funasr/models \
    --model-dir damo/speech_paraformer-large-vad-punc_asr_nat-zh-cn-16k-common-vocab8404-onnx \
    --online-model-dir damo/speech_paraformer-large_asr_nat-zh-cn-16k-common-vocab8404-online-onnx \
    --vad-dir damo/speech_fsmn_vad_zh-cn-16k-common-onnx \
    --punc-dir damo/punc_ct-transformer_zh-cn-common-vad_realtime-vocab272727-onnx \
    --itn-dir thuduj12/fst_itn_zh \
    --lm-dir damo/speech_ngram_lm_zh-cn-ai-wesp-fst \
    --port 10095
```

## 查看日志
```bash
docker logs -f funasr-wss-amd64
```

## 停止
```bash
docker stop funasr-wss-amd64
```

## 删除容器
```bash
docker rm funasr-wss-amd64
```

## 打包tar包
```bash
docker save -o funasr-websocket-server.tar funasr-websocket-server:latest
```

---

# 2、远端构建-amd64
> 适合：只想要可用的镜像、不改源码、走标准流程
> 镜像由 GitHub Actions 在 CI 里自动编译并推送到 GHCR

## 拉取镜像
```bash
docker pull ghcr.io/dio-del/funasr-wss:amd64-latest
```

## 改成本地固定 tag（防止 latest 漂移）
```bash
docker tag ghcr.io/dio-del/funasr-wss:amd64-latest funasr-amd64-20260923-djh:latest
```

## 删除远程 tag（保留本地改名后的）
```bash
docker rmi ghcr.io/dio-del/funasr-wss:amd64-latest
```

## docker 启动流程
```bash
docker run -d \
    -p 10095:10095 \
    --name funasr-wss-amd64 \
    -v /mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/models:/home/funasr/models \
    funasr-amd64-20260923-djh:latest \
    /workspace/funasr-wss-server-2pass \
    --download-model-dir /home/funasr/models \
    --model-dir damo/speech_paraformer-large-vad-punc_asr_nat-zh-cn-16k-common-vocab8404-onnx \
    --online-model-dir damo/speech_paraformer-large_asr_nat-zh-cn-16k-common-vocab8404-online-onnx \
    --vad-dir damo/speech_fsmn_vad_zh-cn-16k-common-onnx \
    --punc-dir damo/punc_ct-transformer_zh-cn-common-vad_realtime-vocab272727-onnx \
    --itn-dir thuduj12/fst_itn_zh \
    --lm-dir damo/speech_ngram_lm_zh-cn-ai-wesp-fst \
    --port 10095
```

## 查看日志
```bash
docker logs -f funasr-wss-amd64
```

## 停止
```bash
docker stop funasr-wss-amd64
```

## 删除容器
```bash
docker rm funasr-wss-amd64
```

## 打包tar.gz包
```bash
docker save funasr-amd64-20260923-djh:latest | gzip > funasr-amd64-20260923-djh.tar.gz
```

---

# 3、远端构建-arm64
> 适合：只想要可用的镜像、不改源码、走标准流程
> 镜像由 GitHub Actions 在 CI 里自动编译并推送到 GHCR
> 本地用 QEMU 模拟运行，性能较差

## 拉取镜像
```bash
docker pull ghcr.io/dio-del/funasr-wss:arm64-latest
```

## 改成本地固定 tag（防止 latest 漂移）
```bash
docker tag ghcr.io/dio-del/funasr-wss:arm64-latest funasr-arm64-20260923-djh:latest
```

## 删除远程 tag（保留本地改名后的）
```bash
docker rmi ghcr.io/dio-del/funasr-wss:arm64-latest
```

## docker 启动流程（arm64 镜像）
```bash
docker run -d \
    --platform linux/arm64 \
    -p 10095:10095 \
    --name funasr-wss-arm64 \
    -v /mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/models:/home/funasr/models \
    funasr-arm64-20260923-djh:latest \
    /workspace/funasr-wss-server-2pass \
    --download-model-dir /home/funasr/models \
    --model-dir damo/speech_paraformer-large-vad-punc_asr_nat-zh-cn-16k-common-vocab8404-onnx \
    --online-model-dir damo/speech_paraformer-large_asr_nat-zh-cn-16k-common-vocab8404-online-onnx \
    --vad-dir damo/speech_fsmn_vad_zh-cn-16k-common-onnx \
    --punc-dir damo/punc_ct-transformer_zh-cn-common-vad_realtime-vocab272727-onnx \
    --itn-dir thuduj12/fst_itn_zh \
    --lm-dir damo/speech_ngram_lm_zh-cn-ai-wesp-fst \
    --port 10095
```

## 查看日志
```bash
docker logs -f funasr-wss-arm64
```

## 停止
```bash
docker stop funasr-wss-arm64
```

## 删除容器
```bash
docker rm funasr-wss-arm64
```
## 打包tar.gz包
```bash
docker save funasr-arm64-20260923-djh:latest | gzip > funasr-arm64-20260923-djh.tar.gz
```