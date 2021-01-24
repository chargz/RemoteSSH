#!/bin/bash

killall ngrok
export DISPLAY=:0.0
gnome-terminal -e "bash -c \"~/remotessh/ngrok start ssh -config ~/remotessh/ngrok.yml; exec bash\""
sleep 15
ngrokURL=$(curl -s http://localhost:4040/api/tunnels | jq '.["tunnels"][].public_url' | tr -d '"')
curl -X POST -H 'Content-type: application/json' --data '{"text":"Here is your URL - '$ngrokURL' "}' <INSERT SLACK URL>
rm tunnels.json
