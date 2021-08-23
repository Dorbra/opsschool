#!/bin/bash
#add fix to exercise2 here

# remove listing for '127.0.0.1 www.ascii-art.de'
sudo sed -i "/192.168.100.11 server2/d" /etc/hosts
