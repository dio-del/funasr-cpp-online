# arm64 容器使用流程
用本地QEMU模拟，性能较差

# docker 启动流程（arm64 镜像 + 复用本地 amd64 模型）
docker run -d \
    --platform linux/arm64 \
    -p 10095:10095 \
    --name funasr-wss-arm64 \
    -v /mnt/c/Users/xuptd/Desktop/CMB-WSL/funasr-cpp-online/models:/home/funasr/models \
    funasr-arm64-20260919-djh:latest \
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
docker logs -f funasr-wss-arm64

# 停止
docker stop funasr-wss-arm64

# 删除容器
docker rm funasr-wss-arm64