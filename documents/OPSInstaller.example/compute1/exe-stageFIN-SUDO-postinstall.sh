# Openstack icehouse installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2014  Kasidit Chanchio
#
# You must run this script with sudo or as root.
#
# restore  sudoers
#!/bin/bash -x
cd $HOME/OPSInstaller/compute1
pwd
cp files/sudoers.save /etc/sudoers
