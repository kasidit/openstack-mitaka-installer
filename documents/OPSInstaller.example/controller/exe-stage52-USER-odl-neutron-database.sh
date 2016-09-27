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
printf "\n1. drop and create neutron database...press"
#read varkey

mysql -u root -pmysqlpassword -e "DROP DATABASE neutron;"
mysql -u root -pmysqlpassword -e "CREATE DATABASE neutron;"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON neutron.* TO 'neutron'@'localhost' IDENTIFIED BY '5b66f330dd9ab789b5ba';"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON neutron.* TO 'neutron'@'%' IDENTIFIED BY '5b66f330dd9ab789b5ba';"
