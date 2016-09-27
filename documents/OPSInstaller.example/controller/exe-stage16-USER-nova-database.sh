# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
echo "Run this script  as user."
printf "\n1. create nova database tables...press"
#read varkey

mysql -u root -pmysqlpassword -e "CREATE DATABASE nova_api;"
mysql -u root -pmysqlpassword -e "CREATE DATABASE nova;"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON nova_api.* TO 'nova'@'localhost' IDENTIFIED BY 'eb7688dafc9a9f170682';"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON nova_api.* TO 'nova'@'%' IDENTIFIED BY 'eb7688dafc9a9f170682';"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON nova.* TO 'nova'@'localhost' IDENTIFIED BY 'eb7688dafc9a9f170682';"
mysql -u root -pmysqlpassword -e "GRANT ALL PRIVILEGES ON nova.* TO 'nova'@'%' IDENTIFIED BY 'eb7688dafc9a9f170682';"
