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
echo -n "1. install nuetron...press"
#read varkey
apt-get -y install neutron-server neutron-plugin-ml2 python-neutronclient

cp files/neutron.conf /etc/neutron/neutron.conf
cp files/ml2_conf.ini /etc/neutron/plugins/ml2/ml2_conf.ini
cp files/nova-stage23.conf /etc/nova/nova.conf

su -s /bin/sh -c "neutron-db-manage --config-file /etc/neutron/neutron.conf \
  --config-file /etc/neutron/plugins/ml2/ml2_conf.ini upgrade head" neutron

service nova-api restart
service neutron-server restart
