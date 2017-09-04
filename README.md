# RemoteSSH
Starts an ngrok TCP tunnel and notifies you of the URL. Perfect for remote SSH connections.

# Examples:
Copy this into a Raspberry Pi and include starter.sh in your bootup script; Place the Pi in any remote place, give it an internet connection, and you can SSH into it from home.

# Steps:

1) Make an account on ngrok.com and on Slack as well.
2) Save the `auth-token` that you got from ngrok.com.
3) cd into `RemoteSSH` and execute `./ngrok authtoken <AUTHTOKEN>`
4) Create an incoming webhook on your slack account and obtain the URL.
5) Run `sudo bash starter.sh`. You should get the TCP URL and Port on Slack.
6) Run `ssh user@<IP> -p <PORT>`





Requires Python 2.7 to work. 
ngrok credits go to Alan Shreve - @inconshreveable.
