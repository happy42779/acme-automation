#!/bin/bash
systemctl stop nginx
/root/.acme.sh/acme.sh --issue -d www.xxxxxx.xxx --standalone
/root/.acme.sh/acme.sh --installcert -d www.xxxxxx.xxx --fullchain-file /path that used by nginx/xxxxxx.pem --key-file /path that used by nginx/xxxxxx.key
systemctl start nginx
