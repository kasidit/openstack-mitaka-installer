# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
# run with sudo or as root.
#
#!/bin/bash -x
cd $HOME/OPSInstaller/network
pwd

printf "* install neutron packages.. press \n"
#read varkey
apt-get -y install neutron-plugin-ml2 neutron-openvswitch-agent \
  neutron-l3-agent neutron-dhcp-agent neutron-metadata-agent

printf "* copy config files.. press\n"
#read varkey

cp files/neutron.conf /etc/neutron/neutron.conf
cp files/ml2_conf.ini /etc/neutron/plugins/ml2/ml2_conf.ini

cp files/l3_agent.ini /etc/neutron/l3_agent.ini
cp files/dhcp_agent.ini /etc/neutron/dhcp_agent.ini
cp files/metadata_agent.ini /etc/neutron/metadata_agent.ini

