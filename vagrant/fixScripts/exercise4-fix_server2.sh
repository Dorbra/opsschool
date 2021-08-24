#!/bin/bash
#add fix to exercise4-server2 here

# copy-append server1 public key to authorized_keys file
cat /vagrant/server1.key | tee -a /home/vagrant/.ssh/authorized_keys