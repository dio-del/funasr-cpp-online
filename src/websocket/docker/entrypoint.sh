#!/bin/bash
# FunASR C++ WebSocket Server Entrypoint Script

set -e

# Default values
DOWNLOAD_MODEL_DIR="${DOWNLOAD_MODEL_DIR:-/opt/app/model/cpp_prd/funasr_app_model}"
MODEL_DIR="${MODEL_DIR:-damo/speech_paraformer-large-vad-punc_asr_nat-zh-cn-16k-common-vocab8404-onnx}"
ONLINE_MODEL_DIR="${ONLINE_MODEL_DIR:-damo/speech_paraformer-large_asr_nat-zh-cn-16k-common-vocab8404-online-onnx}"
VAD_DIR="${VAD_DIR:-damo/speech_fsmn_vad_zh-cn-16k-common-onnx}"
PUNC_DIR="${PUNC_DIR:-damo/punc_ct-transformer_zh-cn-common-vad_realtime-vocab272727-onnx}"
ITN_DIR="${ITN_DIR:-thuduj12/fst_itn_zh}"
LM_DIR="${LM_DIR:-damo/speech_ngram_lm_zh-cn-ai-wesp-fst}"
PORT="${PORT:-8082}"

# Auto-detect CPU threads
DECODER_THREAD_NUM="${DECODER_THREAD_NUM:-$(cat /proc/cpuinfo 2>/dev/null | grep "processor" | wc -l || echo 4)}"
MULTIPLE_IO=16
IO_THREAD_NUM="${IO_THREAD_NUM:-$(( (DECODER_THREAD_NUM + MULTIPLE_IO - 1) / MULTIPLE_IO ))}"
MODEL_THREAD_NUM="${MODEL_THREAD_NUM:-1}"

CERTFILE="${CERTFILE:-}"
KEYFILE="${KEYFILE:-}"
HOTWORD="${HOTWORD:-}"

# SSL is disabled by default (no certfile)
if [ -z "${CERTFILE}" ] || [ ! -f "${CERTFILE}" ]; then
    CERTFILE=""
    KEYFILE=""
fi

echo "=============================================="
echo "  FunASR WebSocket Server (2pass mode)"
echo "=============================================="
echo "  Model Dir:       ${DOWNLOAD_MODEL_DIR}"
echo "  Port:            ${PORT}"
echo "  Decoder Threads:  ${DECODER_THREAD_NUM}"
echo "  Model Threads:    ${MODEL_THREAD_NUM}"
echo "  IO Threads:      ${IO_THREAD_NUM}"
echo "  SSL Enabled:      $([ -n "${CERTFILE}" ] && echo "YES" || echo "NO")"
echo "=============================================="

exec funasr-wss-server-2pass \
    --download-model-dir "${DOWNLOAD_MODEL_DIR}" \
    --model-dir "${MODEL_DIR}" \
    --online-model-dir "${ONLINE_MODEL_DIR}" \
    --vad-dir "${VAD_DIR}" \
    --punc-dir "${PUNC_DIR}" \
    --itn-dir "${ITN_DIR}" \
    --lm-dir "${LM_DIR}" \
    --decoder-thread-num ${DECODER_THREAD_NUM} \
    --model-thread-num ${MODEL_THREAD_NUM} \
    --io-thread-num ${IO_THREAD_NUM} \
    --port ${PORT} \
    --certfile "${CERTFILE}" \
    --keyfile "${KEYFILE}" \
    --hotword "${HOTWORD}"
