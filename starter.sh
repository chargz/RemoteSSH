#!/bin/bash

killall ngrok
gnome-terminal -x sh -c "./ngrok tcp 22; bash"
sleep 15
curl http://localhost:4040/api/tunnels > tunnels.json
curl -X POST -H 'Content-type: application/json' --data '{"text":"Here is your URL - '$(python ./parsr.py)' "}' [INSERT SLACK URL]
rm tunnels.json
