#!/bin/bash
echo "Installing Ansible and setting it up..."

apt-get update
apt-get install -y ansible

cat <<EOT >> /etc/hosts
192.168.56.2 control-node
192.168.56.3 app01
192.168.56.4 db01
EOT