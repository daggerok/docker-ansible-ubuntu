# docker-ansible-ubuntu

prepared docker infrastructure for ansible playground:
- installed network and ssh access
- required RSA key ~/.ssh/id_rsa(.pub), so please run `ssh-keygen -t rsa`
- in general useless, because of mak user is hardcoded in docker volume daggerok/ansible-ubuntu:v... so it's just for personal use...

machines:
- ansible-master
- ansible-node1
- ansible-node2

```bash
docker-compose up -d
docker exec -it ansible-master /bin/bash
ssh ansible-node1
sudo bash
...
exit
docker-compose down -v
```
