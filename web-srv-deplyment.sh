#!/bin/bash

echo "Updating the system..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Install Apache2
sudo apt-get install apache2 -y

# Start Apache2
sudo systemctl start apache2

# Enable Apache2
sudo systemctl enable apache2

# Install Unzip
sudo apt-get install unzip -y

echo "Downloagin application..."
#Download web application
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

# Copy web application
echo "Deploying application..."
sudo cp -R /tmp/linux-site-dio-main/* /var/www/html/
