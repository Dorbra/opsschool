#!/bin/bash
#add fix to exercise4-server2 here

# generate a SSH, created on ~/.ssh/id_rsa.pub
ssh-keygen
echo '192.168.100.10 server1' | sudo tee -a /etc/hosts
