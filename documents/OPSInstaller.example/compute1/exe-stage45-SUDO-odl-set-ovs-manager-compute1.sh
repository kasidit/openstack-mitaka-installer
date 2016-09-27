# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#!/bin/bash -x
cd $HOME/OPSInstaller/compute1
pwd
echo "Run with sudo or as root."
#
OVSID=$(sudo ovs-vsctl show | head --lines=1 | awk '{print $1}')
echo OVSID is $OVSID
ovs-vsctl set Open_vSwitch $OVSID other_config={'local_ip'='10.0.1.32'}
#
ovs-vsctl set-manager tcp:10.0.0.92:6640
sleep 5
ovs-vsctl show
ovs-vsctl set-controller br-int tcp:10.0.0.92:6653
sleep 5
ovs-vsctl show
#read varkey
#service openvswitch-switch restart
#service neutron-openvswitch-agent restart
#service neutron-l3-agent restart
#service neutron-dhcp-agent restart
#service neutron-metadata-agent restart
