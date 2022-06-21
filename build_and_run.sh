
docker stop ssvpn_instance
docker rm ssvpn_instance
docker build . -t ssvpn

docker run --cap-add NET_ADMIN -p 1080:1080 --env SERVER=$1 --env USER=$2 --env PASS=$3 -d --restart unless-stopped --name ssvpn_instance ssvpn
