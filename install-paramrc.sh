#!/bin/bash 
#
# OpenStack Installation script (parameter definition)
#
# copyright 2014 kasidit chanchio, vasabilab 
# http://vasabilab.cs.tu.ac.th
# Department of Computer Science, 
# Faculty of Science and Technology, Thammasat University
#
export OPS_LOGIN_NAME=openstack
export OPS_LOGIN_PASS=openstack
export OPS_TIMEZONE=Asia\\/Bangkok
#
export OPS_MYSQL_PASS=mysqlpassword
export DEMO_PASS=demopassword
export ADMIN_PASS=adminpassword
#
export HYPERVISOR=qemu
#
export INIT_IMAGE_LOCATION=http:\\/\\/download.cirros-cloud.net\\/0.3.4\\/cirros-0.3.4-x86_64-disk.img
#export INIT_IMAGE_LOCATION=http:\\/\\/10.200.8.126\\/images\\/cirros-0.3.4-x86_64-disk.img
#export INIT_IMAGE_LOCATION=http:\\/\\/localrepo\\/images\\/cirros-0.3.2-x86_64-disk.img
export INIT_IMAGE_NAME=cirros-0.3.4-x86_64-disk
#
export DOMAINNAME=cs.tu.ac.th
#
# Ubuntu Repository Parameters
#
#export LOCAL_REPO=10.200.8.126
#export LOCAL_SECURITY_REPO=10.200.8.126
export LOCAL_REPO=th.archive.ubuntu.com
export LOCAL_SECURITY_REPO=security.ubuntu.com
#
# ntp servers
export NTP_SERVER0=0.th.pool.ntp.org
export NTP_SERVER1=1.th.pool.ntp.org
export NTP_SERVER2=2.th.pool.ntp.org
export NTP_SERVER3=3.th.pool.ntp.org
#
export NTP_SERVER_LOCAL=10.200.8.126 
#
# Management Network
#
export MANAGEMENT_NETWORK_NETMASK=255.255.255.0
export MANAGEMENT_NETWORK=10.0.0.0
export MANAGEMENT_BROADCAST_ADDRESS=10.0.0.255 
export GATEWAY_IP=10.0.0.1 
export DNS_IP=8.8.8.8
#
# ---- controller host ----
#
export CONTROLLER_IP=10.0.0.11
export CONTROLLER_IP_NIC=eth0
#
# ---- network host ----
#
export NETWORK_IP=10.0.0.21
export NETWORK_IP_NIC=eth0
#
export DATA_TUNNEL_NETWORK_NODE_IP=10.0.1.21
export DATA_TUNNEL_NETWORK_NODE_IP_NIC=eth1
export DATA_TUNNEL_NETWORK_ADDRESS=10.0.1.0
export DATA_TUNNEL_NETWORK_NETMASK=255.255.255.0
export VLAN_NETWORK_NODE_IP_NIC=eth2
#
export EXTERNAL_CIDR=10.0.0.0\\/24
export EXTERNAL_CIDR_NIC=eth3
#
export START_FLOATING_IP=10.0.0.100
export END_FLOATING_IP=10.0.0.200
#
# ---- compute host ----
#
export COMPUTE_IP=10.0.0.31
export COMPUTE_IP_NIC=eth0
export DATA_TUNNEL_COMPUTE_NODE_IP=10.0.1.31
export DATA_TUNNEL_COMPUTE_NODE_IP_NIC=eth1
export VLAN_COMPUTE_NODE_IP_NIC=eth2
# For DVR, the EXTERNAL_CIDR* of network node is used on compute nodes.
#
# ---- compute1 host ----
#
export COMPUTE1_IP=10.0.0.32
export COMPUTE1_IP_NIC=eth0
export DATA_TUNNEL_COMPUTE1_NODE_IP=10.0.1.32
export DATA_TUNNEL_COMPUTE1_NODE_IP_NIC=eth1
export VLAN_COMPUTE1_NODE_IP_NIC=eth2
#
export ODL_IP=10.0.0.92
