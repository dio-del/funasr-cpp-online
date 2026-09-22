# FunASR C++ WebSocket Server Docker Image
# Packages locally-built binary — no compilation inside Docker

FROM ubuntu:24.04

ARG TARGETARCH
LABEL maintainer="FunASR"
LABEL description="FunASR C++ WebSocket Server (2pass mode)"
WORKDIR /workspace

# ============================================================
# Use Ubuntu ports mirror for arm64, aliyun for amd64.
# aliyun's noble repo is missing some arm64 package indexes.
# ============================================================
ARG TARGETARCH
RUN if [ "$TARGETARCH" = "arm64" ]; then \
      echo 'deb http://ports.ubuntu.com/ubuntu-ports noble main restricted universe multiverse' > /etc/apt/sources.list && \
      echo 'deb http://ports.ubuntu.com/ubuntu-ports noble-updates main restricted universe multiverse' >> /etc/apt/sources.list && \
      echo 'deb http://ports.ubuntu.com/ubuntu-ports noble-security main restricted universe multiverse' >> /etc/apt/sources.list; \
    else \
      echo 'deb http://mirrors.aliyun.com/ubuntu/ noble main restricted universe multiverse' > /etc/apt/sources.list && \
      echo 'deb http://mirrors.aliyun.com/ubuntu/ noble-updates main restricted universe multiverse' >> /etc/apt/sources.list && \
      echo 'deb http://mirrors.aliyun.com/ubuntu/ noble-security main restricted universe multiverse' >> /etc/apt/sources.list; \
    fi

# ============================================================
# Install build tools for compiling OpenSSL from source
# ============================================================
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    wget \
    perl \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ============================================================
# Compile and install OpenSSL 3.6.1 from source
# ============================================================
ENV OPENSSL_VERSION=3.6.1
COPY openssl-3.6.1.tar.gz /workspace/openssl-3.6.1.tar.gz
RUN tar -xzf openssl-${OPENSSL_VERSION}.tar.gz && \
    cd openssl-${OPENSSL_VERSION} && \
    ./Configure --prefix=/opt/app/openssl-3.6.1 --openssldir=/opt/app/openssl-3.6.1 libdir=lib shared && \
    make -j$(nproc) && \
    make install && \
    cd .. && rm -rf openssl-${OPENSSL_VERSION}*

# Update library cache
ARG TARGETARCH
RUN echo "/opt/app/openssl-3.6.1/lib" > /etc/ld.so.conf.d/openssl-3.6.1.conf && \
    ldconfig && \
    rm -rf /usr/include/openssl && \
    cp -r /opt/app/openssl-3.6.1/include/openssl /usr/include/ && \
    ln -sf /opt/app/openssl-3.6.1/bin/openssl /usr/bin/openssl && \
    if [ "$TARGETARCH" = "arm64" ]; then \
      LIBDIR=/usr/lib/aarch64-linux-gnu; \
      ARCHDIR=aarch64-linux-gnu; \
    else \
      LIBDIR=/usr/lib/x86_64-linux-gnu; \
      ARCHDIR=x86_64-linux-gnu; \
    fi && \
    # Copy real files (not symlinks) — overwrite any existing versions
    cp -fP /opt/app/openssl-3.6.1/lib/libssl.so* "$LIBDIR"/ && \
    cp -fP /opt/app/openssl-3.6.1/lib/libcrypto.so* "$LIBDIR"/ && \
    ldconfig && \
    # Sanity check
    echo "Installed libssl/libcrypto in $LIBDIR:" && \
    ls -la "$LIBDIR"/libssl.so* "$LIBDIR"/libcrypto.so* && \
    /opt/app/openssl-3.6.1/bin/openssl version -a

# ============================================================
# Install runtime dependencies (without default libssl-dev)
# ============================================================
RUN apt-get update && apt-get install -y --no-install-recommends \
    libopenblas-dev \
    libasound2t64 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set OpenSSL environment
ENV PATH="/opt/app/openssl-3.6.1/bin:${PATH}"
ENV LD_LIBRARY_PATH="/opt/app/openssl-3.6.1/lib:/opt/ffmpeg-master-latest-linux64-gpl-shared/lib:/opt/onnxruntime-linux-x64-1.14.0/lib"
ENV OPENSSL_DIR="/opt/app/openssl-3.6.1"

# ============================================================
# Copy local ffmpeg and onnxruntime from build context
# Multi-arch: use architecture-specific directory names
#   onnxruntime-amd64 / onnxruntime-arm64
#   ffmpeg-amd64 / ffmpeg-arm64
# These must exist as links or directories in the build context.
# ============================================================
COPY onnxruntime-${TARGETARCH} /opt/onnxruntime
COPY ffmpeg-${TARGETARCH} /opt/ffmpeg

# ============================================================
# Copy FunASR build output (libfunasr.so, glog, gflags, openfst, etc.)
# ============================================================
COPY funasr-build /opt/funasr-build

# ============================================================
# Environment
# ============================================================
ENV PATH="/opt/ffmpeg/bin:/opt/onnxruntime/lib:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
ENV LD_LIBRARY_PATH="/opt/ffmpeg/lib:/opt/onnxruntime/lib:/opt/funasr-build"

# ============================================================
# Copy locally-built binary from build context
# ============================================================
COPY funasr-wss-server-2pass funasr-wss-server-2pass
RUN chmod +x funasr-wss-server-2pass
