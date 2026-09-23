# FunASR C++ WebSocket Server Docker Image
# Packages locally-built binary — no compilation inside Docker

FROM ubuntu:26.04

LABEL maintainer="FunASR"
LABEL description="FunASR C++ WebSocket Server (2pass mode)"
WORKDIR /workspace

# ============================================================
# Use Ubuntu ports mirror for arm64, aliyun for amd64.
# aliyun's resolute repo is missing some arm64 package indexes.
# ============================================================
ARG TARGETARCH
RUN if [ "$TARGETARCH" = "arm64" ]; then \
      echo 'deb http://ports.ubuntu.com/ubuntu-ports resolute main restricted universe multiverse' > /etc/apt/sources.list && \
      echo 'deb http://ports.ubuntu.com/ubuntu-ports resolute-updates main restricted universe multiverse' >> /etc/apt/sources.list && \
      echo 'deb http://ports.ubuntu.com/ubuntu-ports resolute-security main restricted universe multiverse' >> /etc/apt/sources.list; \
    else \
      echo 'deb http://mirrors.aliyun.com/ubuntu/ resolute main restricted universe multiverse' > /etc/apt/sources.list && \
      echo 'deb http://mirrors.aliyun.com/ubuntu/ resolute-updates main restricted universe multiverse' >> /etc/apt/sources.list && \
      echo 'deb http://mirrors.aliyun.com/ubuntu/ resolute-security main restricted universe multiverse' >> /etc/apt/sources.list; \
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
    # Note: OpenSSL Configure defaults libdir per platform
    #   linux-aarch64 -> lib
    #   linux-x86_64  -> lib64  (silently ignores bare 'libdir=lib')
    # Map Docker TARGETARCH (amd64/arm64) to OpenSSL's platform identifiers
    # (linux-x86_64 / linux-aarch64), and pass --libdir=lib so Configure
    # installs .so files into lib/ on both arches.
    if [ "$TARGETARCH" = "arm64" ]; then \
      OPENSSL_TARGET=linux-aarch64; \
    else \
      OPENSSL_TARGET=linux-x86_64; \
    fi && \
    ./Configure "$OPENSSL_TARGET" --prefix=/opt/app/openssl-3.6.1 --openssldir=/opt/app/openssl-3.6.1 --libdir=lib shared && \
    make -j$(nproc) && \
    make install && \
    cd .. && rm -rf openssl-${OPENSSL_VERSION}*

# Update library cache.
# Detect actual lib dir (lib or lib64) for ld.so.conf and the system lib copy.
# OpenSSL Configure picks per-platform defaults that may differ from --libdir.
# TARGETARCH was already declared above; no need to redeclare.
RUN SSLDIR=$(ls -d /opt/app/openssl-3.6.1/lib /opt/app/openssl-3.6.1/lib64 2>/dev/null | head -1) && \
    echo "OpenSSL install libdir: $SSLDIR" && \
    echo "$SSLDIR" > /etc/ld.so.conf.d/openssl-3.6.1.conf && \
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
    echo "Copying OpenSSL libs from $SSLDIR to $LIBDIR" && \
    cp -fP "$SSLDIR"/libssl.so* "$LIBDIR"/ && \
    cp -fP "$SSLDIR"/libcrypto.so* "$LIBDIR"/ && \
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

# ============================================================
# Replace the base image's old OpenSSL 3.0.x .so files with our
# compiled 3.6.1 versions in /usr/lib/<arch>-linux-gnu/. This prevents
# both:
#   - Image scanners reporting the base image's EOL libssl3t64 3.0.13
#   - The dynamic linker accidentally loading the old .so
# We already did the cp -fP above; this is a defensive re-copy after
# apt installed any new packages that might have re-extracted the old
# .so from a deb cache.
# ============================================================
ARG TARGETARCH
RUN if [ "$TARGETARCH" = "arm64" ]; then \
      LIBDIR=/usr/lib/aarch64-linux-gnu; \
    else \
      LIBDIR=/usr/lib/x86_64-linux-gnu; \
    fi && \
    # Re-copy compiled 3.6.1 .so files (overwriting anything apt put back)
    cp -fP /opt/app/openssl-3.6.1/lib/libssl.so* "$LIBDIR"/ && \
    cp -fP /opt/app/openssl-3.6.1/lib/libcrypto.so* "$LIBDIR"/ && \
    ldconfig && \
    # Update ca-certificates to match our compiled OpenSSL
    cp -r /opt/app/openssl-3.6.1/certs/* /etc/ssl/certs/ 2>/dev/null || true && \
    echo "Final OpenSSL runtime check:" && \
    ls -la "$LIBDIR"/libssl.so* "$LIBDIR"/libcrypto.so* && \
    /opt/app/openssl-3.6.1/bin/openssl version -a

# Set OpenSSL environment.
# Note: OpenSSL .so files are discoverable via /etc/ld.so.conf.d/openssl-3.6.1.conf
# (set up earlier with the runtime-detected libdir), so we don't need to put
# /opt/app/openssl-3.6.1/{lib,lib64} on LD_LIBRARY_PATH — and including it would
# be wrong anyway, because Configure picks lib vs lib64 per platform.
ENV PATH="/opt/app/openssl-3.6.1/bin:${PATH}"
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
