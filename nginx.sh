#!/bin/bash
set -e

# Update packages
apt-get update -y

# Install nginx and git
apt-get install -y nginx git

# Enable and start nginx
systemctl enable nginx
systemctl start nginx

# Clear default nginx web root
rm -rf /var/www/html/*

# Clone your website repo
git clone https://github.com/Asthakwh/My_Webpage.git /var/www/html/

# Set correct ownership and permissions
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
