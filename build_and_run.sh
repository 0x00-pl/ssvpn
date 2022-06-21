if [ $# -ne 3 ]; then
  echo "[error]: not enough arguments."
  echo "usage: $0 <server> <user> <password>"
  exit 0
fi

docker stop ssvpn_instance
docker rm ssvpn_instance
docker build . -t ssvpn

docker run --cap-add NET_ADMIN -p 1080:1080 --env SERVER=$1 --env USER=$2 --env PASS=$3 -d --restart unless-stopped --name ssvpn_instance ssvpn
