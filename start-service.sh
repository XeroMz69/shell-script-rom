#!/bin/bash

sudo service ssh start
sudo service apache2 start
echo "Please enter the cloudflared token command:"
read token
sudo cloudflared service uninstall
$token
