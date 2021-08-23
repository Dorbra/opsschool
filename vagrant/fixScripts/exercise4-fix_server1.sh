#!/bin/bash
#add fix to exercise4-server1 here
sudo sed -i 's/Require all denied/Require all granted/g' /etc/apache2/sites-available/000-default.conf
sudo service apache2 restart
