#!/bin/bash

# Create USER
user=xero
password=xero
sudo useradd -m -s /bin/bash -G users xero
echo "$user:$password" | chpasswd
sudo echo "xero ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers

# Configure SSH
sudo apt install openssh-server -y
sudo service ssh start
wget https://github.com/cloudflare/cloudflared/releases/download/2025.7.0/cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared*
