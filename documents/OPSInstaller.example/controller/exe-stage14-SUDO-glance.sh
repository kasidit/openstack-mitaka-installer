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
echo -n "1. install glance...press"
#read varkey

apt-get -y install glance 

cp files/glance-api.conf /etc/glance/glance-api.conf
cp files/glance-registry.conf /etc/glance/glance-registry.conf

echo "su -s /bin/sh -c \"glance-manage db_sync\" glance"
su -s /bin/sh -c "glance-manage db_sync" glance
#
service glance-registry restart
service glance-api restart
#
