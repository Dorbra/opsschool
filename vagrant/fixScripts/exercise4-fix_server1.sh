#!/bin/bash
#add fix to exercise4-server1 here
# generate a SSH, created on ~/.ssh/id_rsa.pub
ssh-keygen
# copy ssh key for shared file pub key
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/server1pub.key

