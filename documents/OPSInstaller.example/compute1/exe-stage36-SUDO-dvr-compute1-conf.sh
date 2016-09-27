# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
# run with sudo or as root.
#
#!/bin/bash -x
cd $HOME/OPSInstaller/compute1
pwd

printf "\n2. install extra agents. press \n"
#read varkey
apt-get -y install neutron-l3-agent neutron-metadata-agent

cp files/openvswitch_agent_stage36.ini /etc/neutron/plugins/ml2/openvswitch_agent.ini
cp files/l3_agent_stage36.ini /etc/neutron/l3_agent.ini
cp files/metadata_agent_stage36.ini /etc/neutron/metadata_agent.ini

ovs-vsctl add-br br-ex
ovs-vsctl add-port br-ex eth3

service openvswitch-switch restart
service neutron-openvswitch-agent restart
service neutron-l3-agent restart
service neutron-metadata-agent restart
