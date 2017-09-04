# RemoteSSH
Starts an ngrok TCP tunnel and notifies you of the URL. Perfect for remote SSH connections.

# Examples:
Copy this into a Raspberry Pi and include starter.sh in your bootup script; Place the Pi in any remote place, give it an internet connection, and you can SSH into it from home.

# Steps (On the remote device):

1) Create an account on ngrok.com and on Slack as well.
2) Save the `auth-token` that you got from ngrok.com.
3) Clone this repository, cd into `RemoteSSH` and execute `./ngrok authtoken <AUTHTOKEN>`
4) Create an incoming webhook on your Slack account and obtain the URL. More here - https://api.slack.com/incoming-webhooks
5) Copy the Slack URL to `starter.sh`, on line 7.
6) Run `sudo bash starter.sh`. You should get the TCP URL and Port on Slack.

# From Home on your computer:

Run `ssh user@<IP> -p <PORT>` to gain access to the remote device.



If port 4040 doesn't work, replace with port 4041 and try. This must be done on line 6 of `starter.sh`

Requires Python 2.7 to work. 
ngrok credits go to Alan Shreve - @inconshreveable.
