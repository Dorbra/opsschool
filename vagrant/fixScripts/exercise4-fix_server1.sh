#!/bin/bash
#add fix to exercise4-server1 here

# generate a SSH, created on ~/.ssh/id_rsa.pub
ssh-keygen
echo '192.168.100.11 server2' | sudo tee -a /etc/hosts
