#!/bin/bash
#add fix to exercise2 here

# remove listing for '127.0.0.1 www.ascii-art.de'
sudo sed -ie '/www.ascii-art.de/d' /etc/hosts
