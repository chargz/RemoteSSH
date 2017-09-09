#!/bin/bash

killall ngrok
export DISPLAY=:0.0
gnome-terminal -e "bash -c \"~/remotessh/ngrok tcp 22; exec bash\""
sleep 15
curl http://localhost:4040/api/tunnels > tunnels.json
curl -X POST -H 'Content-type: application/json' --data '{"text":"Here is your URL - '$(python ./parsr.py)' "}' <INSERT SLACK URL>
rm tunnels.json
