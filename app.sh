echo "start logging..."

echo "[pl][debug] connecting: ${USER}:${PASS}"

echo -e "${PASS}" | openconnect ${SERVER} --user="${USER}" --passwd-on-stdin --reconnect-timeout 10 -b
sleep 10

ping z.cn -i 120 &  # keepalive

ss-server &
ss-local -c /etc/shadowsocks-libev/local.json -v
