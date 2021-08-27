#!/bin/bash
#add fix to exercise5-server2 here

# copy-append server1 public key to authorized_keys file
cat /vagrant/server1pub.key | tee -a /home/vagrant/.ssh/authorized_keys