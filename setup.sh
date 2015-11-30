#/bin/bash

apt-get update
apt-get upgrade
apt-get install -y ruby python youtube-dl

apt-get install -y tinyproxy
sed -i -e 's/#Listen 192.168.0.1/Listen 127.0.0.1/g' /etc/tinyproxy.conf
service tinyproxy restart

fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
