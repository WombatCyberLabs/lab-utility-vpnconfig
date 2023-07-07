WAIT=5
echo "Waiting $WAIT seconds for vpn config webserver to prepare";
sleep $WAIT;
curl  http://vpn:8080 > /var/www/html/client.ovpn
nginx && while true; do sleep 12 ; done