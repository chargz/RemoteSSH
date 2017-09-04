# RemoteSSH
Starts an ngrok TCP tunnel and notifies you of the URL. Perfect for remote SSH connections.

# Steps:

1) Make an account on ngrok.com and on slack as well.
2) Save the auth-key that you got from ngrok.com.
3) cd into RemoteSSH and execute `./ngrok authtoken <AUTHTOKEN>`
4) Create an incoming webhook on your slack account and obtain the URL.
5) Run `sudo bash starter.sh`. You should get the URL on Slack.

Requires Python 2.7 to work. 
ngrok credits go to @inconshrevable
