# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/compute
pwd
echo "Run this script with sudo or as root."
#read varkey

cp files/ml2_conf_stage49.ini /etc/neutron/plugins/ml2/ml2_conf.ini
