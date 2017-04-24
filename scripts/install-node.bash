#!/bin/bash
apt update
apt install -y iputils-ping openssh-server net-tools curl vim python
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
service ssh start
echo "node started."
/bin/bash
