echo "start logging..."

echo "[pl][debug] connecting: ${USER}:${PASS}"

echo -e "${PASS}" | openconnect ${SERVER} --user="${USER}" --passwd-on-stdin -b
sleep 10

ss-server &
ss-local -c /etc/shadowsocks-libev/local.json -v
