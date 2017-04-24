#!/bin/bash
apt update
apt install -y iputils-ping openssh-client net-tools curl software-properties-common vim
apt-add-repository ppa:ansible/ansible -y
apt update
apt install -y ansible
echo "manager started."
/bin/bash
