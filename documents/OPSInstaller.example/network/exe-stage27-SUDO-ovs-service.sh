# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#!/bin/bash -x
cd $HOME/OPSInstaller/network
pwd
echo "Run with sudo or as root."
#
printf "1. configure openvswitch service.. press \n"
#read varkey
cp files/ml2_conf.ini /etc/neutron/plugins/ml2/ml2_conf.ini
cp files/openvswitch_agent.ini /etc/neutron/plugins/ml2/openvswitch_agent.ini
ovs-vsctl add-br br-vlan
ovs-vsctl add-port br-vlan eth2
ovs-vsctl add-br br-ex
ovs-vsctl add-port br-ex eth3
#ethtool -K eth3 gro off

printf "2. restart neutron agents.. press\n"
#read varkey
service openvswitch-switch restart
service neutron-openvswitch-agent restart
service neutron-l3-agent restart
service neutron-dhcp-agent restart
service neutron-metadata-agent restart
