# funasr-cpp-online

# 编译流程
cd funasr-cpp-online/src/websocket
mkdir build
cd build
cmake  -DCMAKE_BUILD_TYPE=release .. -DONNXRUNTIME_DIR=/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/onnxruntime-linux-x64-1.14.0 -DFFMPEG_DIR=/mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/ffmpeg-master-latest-linux64-gpl-shared
make -j 16

# 打包流程
cd /mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/src/websocket/docker

./build.sh

# load
docker load -i funasr-websocket-server.tar

# docker 启动流程
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

# 查看日志
docker logs -f funasr-wss-amd64

# 停止
docker stop funasr-wss-amd64

# 删除容器
docker rm funasr-wss-amd64

# 打包tar包
docker save -o funasr-websocket-server.tar funasr-websocket-server:latest