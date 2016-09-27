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

cp /etc/apt/sources.list /etc/apt/sources.list.saved
cp files/local-sources.list /etc/apt/sources.list
apt-get update
#read varkey
apt-get -y purge neutron-openvswitch-agent
service openvswitch-switch stop
rm -rf /var/log/openvswitch/
rm -rf /etc/openvswitch/conf.db
#
mkdir /var/log/openvswitch/
sudo service openvswitch-switch start
#
ovs-vsctl show
