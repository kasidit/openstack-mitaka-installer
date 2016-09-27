# Openstack icehouse installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2014  Kasidit Chanchio
#
# run as a user
#
#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
echo "Run this script as a user."
echo -n "1. create keystone database user...press"
#read varkey
#
mysql -u root -pmysqlpassword -e "CREATE DATABASE keystone;"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'localhost' IDENTIFIED BY 'd737e116b79d65fdd94b';"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'%' IDENTIFIED BY 'd737e116b79d65fdd94b';"
#
