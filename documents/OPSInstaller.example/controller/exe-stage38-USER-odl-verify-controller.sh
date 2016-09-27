# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
echo "You have to install necessary openstack or neutron features on the ODL controller"
echo "before proceed with this OpenStack and ODL Berylium integration."
echo "Run this script as a user. Press any key to continue."
#read varkey
cp /etc/apt/sources.list /etc/apt/sources.list.saved
cp files/local-sources.list /etc/apt/sources.list
apt-get update

curl -u admin:admin http://10.0.0.92:8080/controller/nb/v2/neutron/networks

