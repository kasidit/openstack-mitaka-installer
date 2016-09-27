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
ovs-vsctl add-br br-ex
sudo ovs-vsctl add-port br-ex eth3
sleep 2
ovs-vsctl show
#read varkey
#service openvswitch-switch restart
#service neutron-openvswitch-agent restart
#service neutron-l3-agent restart
#service neutron-dhcp-agent restart
#service neutron-metadata-agent restart
