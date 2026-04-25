#!/bin/bash
set -e
apt-get update -y
apt-get install -y nginx
systemctl enable nginx
systemctl start nginx
rm -rf /var/www/html/*
git clone https://github.com/Asthakwh/My_Webpage.git /var/www/html/
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
