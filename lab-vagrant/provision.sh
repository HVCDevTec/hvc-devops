#!/bin/bash
echo "Installing Apache and setting it up..."

apt-get update
apt-get install -y apache2

# Copy HTML files
cp -r /vagrant/html/* /var/www/html/

# Start Apache
systemctl enable apache2
systemctl restart apache2

echo "Apache installed successfully!"