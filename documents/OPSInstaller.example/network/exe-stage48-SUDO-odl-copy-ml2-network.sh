# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/network
pwd
echo "Run this script with sudo or as root."
#read varkey

echo cp files/ml2_conf_stage48.ini /etc/neutron/plugins/ml2/ml2_conf.ini
cp files/ml2_conf_stage48.ini /etc/neutron/plugins/ml2/ml2_conf.ini
