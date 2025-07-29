#!/bin/bash

# Create USER
user=xero
password=xero
sudo useradd -m -s /bin/bash -G users xero
sudo echo "$user:$password" | sudo chpasswd
sudo su -c 'echo "xero ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers'

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
cd /home/xero
sudo wget https://raw.githubusercontent.com/XeroMz69/shell-script-rom/refs/heads/main/code-server.sh
sudo chown xero:users code-server.sh
