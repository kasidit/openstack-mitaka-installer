# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
echo "Run this script as a user."
printf "\n1. create glance database tables...press"
#read varkey
mysql -u root -pmysqlpassword -e "CREATE DATABASE glance;"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON glance.* TO 'glance'@'localhost' IDENTIFIED BY 'f1a88cd97fdde2f45749';"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON glance.* TO 'glance'@'%' IDENTIFIED BY 'f1a88cd97fdde2f45749';"
