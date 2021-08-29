#!/bin/bash

while getopts d:p: flag
do
    case "${flag}" in
        d) DOMAIN=${OPTARG};;
        p) PATH=${OPTARG};;
    esac
done

# validating params

# checking if user provided '/' for the path

FILE=~/.acme.sh/acme.sh
if [ ! -f "$FILE" ]; then
    ehco "installing acme"
    cd ~
    git clone https://github.com/acmesh-official/acme.sh.git
    ./acme.sh/acme.sh   --install
fi

echo "installing denpendencies"
apt-get install socat curl cron openssl
~/.acme.sh/acme.sh --issue -d $DOMAIN --standalone
~/.acme.sh/acme.sh --installcert -d $DOMAIN --fullchain-file $PATH/$DOMAIN.pem --key-file $PATH/$DOMAIN.key --reloadcmd "nginx -s reload"
