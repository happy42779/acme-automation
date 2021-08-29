#!/bin/bash

#while getopts d:p: flag
#do
#    case "${flag}" in
#        d) DOMAIN=${OPTARG};;
#        p) PATH=${OPTARG};;
#    esac
#done

# validating params

# checking if user provided '/' for the path

~/.acme.sh/acme.sh --issue -d DOMAIN --standalone --server letsencrypt
~/.acme.sh/acme.sh --installcert -d DOMAIN --fullchain-file PATH/DOMAIN.pem --key-file PATH/DOMAIN.key --reloadcmd "nginx -s reload"
