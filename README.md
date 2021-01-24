# RemoteSSH
Starts an ngrok TCP tunnel and notifies you of the URL. Perfect for automated remote SSH connections.

# Examples:
Copy this into a Raspberry Pi and include starter.sh in your bootup script; Place the Pi in any remote place, give it an internet connection, and you can SSH into it from home.

# Steps (On the remote device, assuming it's running a Debian based Distro):

1) Run `sudo apt-get install gnome-terminal at-spi2-core`
2) Create an account on ngrok.com and on Slack as well.
3) Save the `auth-token` that you got from ngrok.com.
4) Clone this repository to your home directory (`/home/USER/`), cd into `RemoteSSH` and replace `<YOUR AUTHTOKEN>` with the previous auth token in `ngrok.yml`.
5) Create an incoming webhook on your Slack account and obtain the URL. More here - https://api.slack.com/incoming-webhooks
6) Copy the Slack URL to `starter.sh`, on line 7.
7) Run `sudo bash starter.sh`. You should get the TCP URL and Port on Slack.

# From Home on your computer:

Run `ssh user@<IP> -p <PORT>` to gain access to the remote device.


Requires Python 2.7 to work. 
ngrok credits go to Alan Shreve - @inconshreveable.
