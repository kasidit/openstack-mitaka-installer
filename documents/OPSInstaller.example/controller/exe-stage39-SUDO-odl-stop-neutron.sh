# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
echo "You must clean all networks related stuffs from OpenStack."
echo "Run this script with sudo or as root."
#read varkey

service neutron-server stop
