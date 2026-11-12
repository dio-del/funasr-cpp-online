# FunASR C++ WebSocket Server Docker Image
#
# Multi-stage build:
#   base    -- apt mirror setup only
#   builder -- compiles OpenSSL 3.6.1 (needs gcc/cpp/g++/make/perl)
#   runtime -- final image: build artifacts + runtime deps, NO toolchain
#
# Why split: this used to be a single-stage build, so build-essential
# stayed in the published image and image scanners reported gcc / cpp
# as risk components (CVE-2020-11023). A runtime image never needs a
# compiler; splitting the stages removes both components entirely.

# ============================================================
# base: apt mirrors (arm64 -> ports.ubuntu.com, amd64 -> aliyun).
# aliyun's resolute repo is missing some arm64 package indexes.
# ============================================================
FROM ubuntu:26.04 AS base

ARG TARGETARCH
ENV DEBIAN_FRONTEND=noninteractive

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
# Stage 1/2: builder -- compile OpenSSL 3.6.1.
# perl runs the Configure script; build-essential brings gcc/cpp/g++/make/ar.
# ============================================================
FROM base AS builder

ARG TARGETARCH
ENV OPENSSL_VERSION=3.6.1
WORKDIR /workspace

RUN apt-get update && apt-get install -y --no-install-recommends \
      build-essential \
      perl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY openssl-3.6.1.tar.gz /workspace/openssl-3.6.1.tar.gz
RUN tar -xzf openssl-${OPENSSL_VERSION}.tar.gz && \
    cd openssl-${OPENSSL_VERSION} && \
    # Configure's default libdir differs per platform
    #   linux-aarch64 -> lib
    #   linux-x86_64  -> lib64
    # so pass --libdir=lib to pin it, and map Docker TARGETARCH
    # (amd64/arm64) to OpenSSL's platform identifiers.
    if [ "$TARGETARCH" = "arm64" ]; then \
      OPENSSL_TARGET=linux-aarch64; \
    else \
      OPENSSL_TARGET=linux-x86_64; \
    fi && \
    ./Configure "$OPENSSL_TARGET" --prefix=/opt/app/openssl-3.6.1 --openssldir=/opt/app/openssl-3.6.1 --libdir=lib shared && \
    make -j$(nproc) && \
    make install && \
    cd .. && rm -rf openssl-${OPENSSL_VERSION}* && \
    # Assert Configure honoured --libdir=lib. If it ever lands in lib64/
    # we fail here instead of silently shipping the distro's libssl3t64.
    test -f /opt/app/openssl-3.6.1/lib/libssl.so.3 && \
    test -f /opt/app/openssl-3.6.1/lib/libcrypto.so.3

# ============================================================
# Stage 2/2: runtime -- final image, no compiler toolchain.
# ============================================================
FROM base AS runtime

ARG TARGETARCH
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /workspace

# Runtime packages only (no compiler):
#   libstdc++6     -> libstdc++.so.6  (binary + libonnxruntime.so)
#   libgcc-s1      -> libgcc_s.so.1   (DT_NEEDED of libonnxruntime.so)
#   libopenblas0   -> runtime lib only; the -dev package drags in the
#                     gfortran compiler
#   libasound2t64  -> local builds may enable portaudio (CI disables it)
#   ca-certificates-> system CA trust store
# NOTE: gcc-N-base arrives as a hard dependency of libstdc++6/libgcc-s1.
# It ships libgcc_s.so.1 (runtime files only, no compiler) and cannot
# be removed.
RUN apt-get update && apt-get install -y --no-install-recommends \
      ca-certificates \
      libstdc++6 \
      libgcc-s1 \
      libopenblas0 \
      libasound2t64 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# OpenSSL 3.6.1: take only the compiled install tree from the builder.
COPY --from=builder /opt/app/openssl-3.6.1 /opt/app/openssl-3.6.1

# Install the 3.6.1 .so files into the system lib dir (apt may have
# extracted an older libssl3t64 above), register them with ldconfig and
# assert the copy actually took effect -- no silent fallback to the
# distro libssl.
RUN set -eu; \
    if [ "$TARGETARCH" = "arm64" ]; then \
      LIBDIR=/usr/lib/aarch64-linux-gnu; \
    else \
      LIBDIR=/usr/lib/x86_64-linux-gnu; \
    fi; \
    SSLDIR=/opt/app/openssl-3.6.1/lib; \
    echo "OpenSSL install libdir: $SSLDIR"; \
    echo "$SSLDIR" > /etc/ld.so.conf.d/openssl-3.6.1.conf; \
    cp -fP "$SSLDIR"/libssl.so* "$LIBDIR"/; \
    cp -fP "$SSLDIR"/libcrypto.so* "$LIBDIR"/; \
    ln -sf /opt/app/openssl-3.6.1/bin/openssl /usr/bin/openssl; \
    ldconfig; \
    cmp "$LIBDIR"/libssl.so.3 "$SSLDIR"/libssl.so.3; \
    cmp "$LIBDIR"/libcrypto.so.3 "$SSLDIR"/libcrypto.so.3; \
    /usr/bin/openssl version | grep -q "OpenSSL 3.6.1"; \
    cp -r /opt/app/openssl-3.6.1/certs/* /etc/ssl/certs/ 2>/dev/null || true; \
    /usr/bin/openssl version -a

ENV OPENSSL_DIR="/opt/app/openssl-3.6.1"

# ============================================================
# Copy build artifacts (identical to the old single-stage Dockerfile)
# ============================================================
COPY onnxruntime-${TARGETARCH} /opt/onnxruntime
COPY ffmpeg-${TARGETARCH} /opt/ffmpeg
COPY funasr-build /opt/funasr-build

# PATH includes the ffmpeg + openssl bins; openssl is also exposed via
# the /usr/bin/openssl symlink, so PATH coverage is belt-and-braces.
ENV PATH="/opt/ffmpeg/bin:/opt/app/openssl-3.6.1/bin:/opt/onnxruntime/lib:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
ENV LD_LIBRARY_PATH="/opt/ffmpeg/lib:/opt/onnxruntime/lib:/opt/funasr-build"

COPY funasr-wss-server-2pass funasr-wss-server-2pass
RUN chmod +x funasr-wss-server-2pass
