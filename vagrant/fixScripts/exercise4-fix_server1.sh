#!/bin/bash
#add fix to exercise4-server1 here

# create SSH config file
sudo touch ~/.ssh/config
# generate a SSH key, created on ~/.ssh/id_rsa.pub
ssh-keygen -N "" -f /home/vagrant/.ssh/id_rsa
echo '192.168.100.11 server2' | sudo tee -a /etc/hosts
