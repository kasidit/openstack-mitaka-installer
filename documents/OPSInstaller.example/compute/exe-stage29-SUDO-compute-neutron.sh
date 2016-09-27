# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
# run with sudo or as root.
#
#!/bin/bash -x
cd $HOME/OPSInstaller/compute
pwd
#printf "\nRun as root\n1. set sysctl .. press\n"
#read varkey
#cp files/sysctl.conf /etc/sysctl.conf
#sysctl -p

printf "\n2. install neutron.. press \n"
#read varkey
apt-get -y install neutron-plugin-ml2 neutron-openvswitch-agent

cp files/neutron.conf /etc/neutron/neutron.conf
cp files/ml2_conf.ini /etc/neutron/plugins/ml2/ml2_conf.ini
cp files/openvswitch_agent.ini /etc/neutron/plugins/ml2/openvswitch_agent.ini
ovs-vsctl add-br br-vlan
ovs-vsctl add-port br-vlan eth2

service openvswitch-switch restart

cp files/nova-stage29.conf /etc/nova/nova.conf

service nova-compute restart
service neutron-openvswitch-agent restart
