echo "start logging..."

ss-server &
ss-local -c /etc/shadowsocks-libev/local.json -v &

echo "connecting: ${USER}:${PASS}"

echo -e "${PASS}" | openconnect szvpn.moffettsys.com:4433 --user="${USER}" --passwd-on-stdin
