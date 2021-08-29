#!/bin/bash
# 1. check if acme.sh is installed
FILE=~/.acme.sh
if [ ! -d "$FILE" ]; then
    cd ~
    git clone https://github.com/acmesh-official/acme.sh.git
fi
# 2. renew
systemctl stop nginx
~/.acme.sh/acme.sh --issue -d www.xxxxxx.xxx --standalone
~/.acme.sh/acme.sh --installcert -d www.xxxxxx.xxx --fullchain-file /path that used by nginx/xxxxxx.pem --key-file /path that used by nginx/xxxxxx.key
systemctl start nginx
