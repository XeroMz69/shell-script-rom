#!/bin/bash

# Create USER
user=xero
password=xero
sudo useradd -m -s /bin/bash -G users xero
sudo echo "$user:$password" | sudo chpasswd
sudo echo "xero ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

# Configure SSH
sudo apt update -y
sudo apt full-upgrade -y
sudo apt install openssh-server -y
sudo service ssh start
wget https://github.com/cloudflare/cloudflared/releases/download/2025.7.0/cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared*
echo "Please enter the cloudflared token command:"
read token
$token

# Configure Web Server
sudo apt install apache2 -y
sudo service apache2 start

# Configure code-server
sudo su -c 'wget https://github.com/coder/code-server/releases/download/v4.102.1/code-server_4.102.1_amd64.deb ;
 sudo dpkg -i code-server* ;
 sed -i.bak 's/auth: password/auth: none/' ~/.config/code-server/config.yaml ;
 code-server --bind-addr 0.0.0.0:2000' -s /bin/bash xero
