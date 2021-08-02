# Periodically automatically update SSL for personal websites

## Steps:
```
1. curl -OL https://raw.githubusercontent.com/happy42779/acme-automation/main/ssl.sh
2. edit the file you download and change the doamin name and the paths
3. chmod +x ssl.sh  # make it executable
4. echo '0 3 */89 * * root  /root/ssl.sh' >> /etc/crontab # say you want to let the system update it every 90 days
```
