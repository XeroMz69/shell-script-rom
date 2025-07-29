#!/bin/bash

wget https://github.com/coder/code-server/releases/download/v4.102.1/code-server_4.102.1_amd64.deb ;
 sudo dpkg -i code-server* ;
 sed -i.bak 's/auth: password/auth: none/' ~/.config/code-server/config.yaml ;
 code-server --bind-addr 0.0.0.0:2000
