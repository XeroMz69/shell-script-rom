#!/bin/bash

sudo service start ssh
sudo service start apache2
echo "Please enter the cloudflared token command:"
read token
sudo cloudflared service uninstall
$token
