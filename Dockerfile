FROM ubuntu:latest

WORKDIR /app

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get update && apt-get install -y apt-utils dnsutils && apt-get install -y shadowsocks-libev network-manager-openconnect openconnect proxychains4

COPY shadowsocks-libev /etc/shadowsocks-libev
COPY proxychains-etc/proxychains4.conf /etc/proxychains4.conf
COPY app.sh app.sh

CMD ["bash", "app.sh"]

