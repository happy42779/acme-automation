# SSL script for webs with nginx

## Steps:
```
# 1. download
curl -OL https://raw.githubusercontent.com/happy42779/acme-automation/main/ssl.sh && chmod +x ssl.sh
# 2. download acme.sh
curl https://get.acme.sh | sh
# 3. edit it and change your own domain and path to the certificates that used by nginx then run ssl.sh
```
