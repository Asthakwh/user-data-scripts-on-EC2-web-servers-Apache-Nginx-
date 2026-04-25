#!/bin/bash

#install apache2
Sudo apt update && upgrade -y
sudo apt install -y apache2

#enable and start apache
sudo systemctl enable apache2
sudo systemctl start apache2

#navigate to the html folder that apache creates on install
cd /var/www/html

sudo mkdir Css
sudo mkdir Scripts

#create index.html file and change file permissions
touch index.html
sudo chmod 775 index.html

sudo echo '<html> <body> <h1> Hello! Here is website fully working! </h1> </body> </html>' > index.html
