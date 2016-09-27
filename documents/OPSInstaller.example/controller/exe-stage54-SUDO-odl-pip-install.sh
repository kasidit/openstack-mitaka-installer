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
#read varkey
sudo apt-get -y install git
git clone https://github.com/openstack/networking-odl -b stable/mitaka
cd networking-odl
python setup.py install
sleep 1
service neutron-server restart
