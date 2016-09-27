# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
echo "Run this script with sudo or as root."
echo -n "1. install horizon...press"
#read varkey

apt-get -y install openstack-dashboard

cp files/local_settings.py /etc/openstack-dashboard/local_settings.py

service apache2 reload

sudo apt-get -y remove openstack-dashboard-ubuntu-theme
