FROM ubuntu:latest

WORKDIR /app

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get update &&  \
    apt-get install -y dnsutils shadowsocks-libev network-manager-openconnect openconnect proxychains4 && \
    apt-get install -y aptitude iputils-ping curl htop

COPY shadowsocks-libev /etc/shadowsocks-libev
COPY proxychains-etc/proxychains4.conf /etc/proxychains4.conf
COPY app.sh app.sh

CMD ["bash", "app.sh"]

