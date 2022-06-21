docker build . -t ssvpn
docker run --cap-add NET_ADMIN -p 1080:1080 --env USER=$1 --env PASS=$2 --name ssvpn_instance ssvpn