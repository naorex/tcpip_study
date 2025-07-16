FROM ubuntu:latest

# 非対話的にするための環境変数
ENV DEBIAN_FRONTEND=noninteractive

# パッケージ更新 & インストール
# 末尾の "apt clean .." は、不要なキャッシュを消してコンテナサイズを小さくするための処理
RUN apt update && apt install -y \
    sudo \
    bash \
    coreutils \
    grep \
    iproute2 \
    iputils-ping \
    traceroute \
    tcpdump \
    bind9-dnsutils \
    dnsmasq-base \
    netcat-openbsd \
    python3 \
    curl \
    wget \
    iptables \
    procps \
    isc-dhcp-client \
    && apt clean && rm -rf /var/lib/apt/lists/*
