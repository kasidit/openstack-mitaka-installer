# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
echo "Run this script as a user."
#read varkey

source ./admin-openrc.sh

neutron net-create ext-net --router:external \
   --provider:physical_network external --provider:network_type flat

neutron subnet-create ext-net 10.0.0.0/24 --name ext-subnet --allocation-pool start=10.0.0.100,end=10.0.0.200 --disable-dhcp --gateway 10.0.0.1

source demo-openrc.sh

neutron net-create demo-net

neutron subnet-create demo-net 192.168.1.0/24 \
   --name demo-subnet --gateway 192.168.1.1

neutron router-create demo-router
neutron router-interface-add demo-router demo-subnet
neutron router-gateway-set demo-router ext-net

echo "wait 1 minute..."
sleep 60
echo "verify connectivity"
#read varkey
ping -c 4 10.0.0.100
