#!/bin/bash 
#
# OpenStack Installation script 
#
# copyright 2014 kasidit chanchio, vasabilab, 
# http://vasabilab.cs.tu.ac.th
# Department of Computer Science, 
# Faculty of Science and Technology, Thammasat University
#
. ./install-paramrc.sh
#
export ORILOGINNAME=vasabi-1234loginname4321-ibasav
export ORILOGINPASS=vasabi-1234loginpassword4321-ibasav
export ORITIMEZONE=vasabi-1234timezone4321-ibasav
#
export ORINTP_SERVER0=vasabi-1234-ntp-pool-server0-4321-ibasav
export ORINTP_SERVER1=vasabi-1234-ntp-pool-server1-4321-ibasav
export ORINTP_SERVER2=vasabi-1234-ntp-pool-server2-4321-ibasav
export ORINTP_SERVER3=vasabi-1234-ntp-pool-server3-4321-ibasav
export ORINTP_SERVER_LOCAL=vasabi-1234-ntp-local-org-server-4321-ibasav
#
export ORIHYPERVISOR=vasabi-1234hypervisor4321-ibasav
export ORIINIT_IMAGE_LOCATION=vasabi-1234init_image_location4321-ibasav
export ORIINIT_IMAGE_NAME=vasabi-1234init_image_name4321-ibasav
export ORIOPS_MYSQL_PASS=vasabilabMYSQL_PASS
export ORIDEMO_PASS=vasabilabDEMO_PASS
export ORIADMIN_PASS=vasabilabADMIN_PASS
export ORIDOMAINNAME=vasabi-1234domainname4321-ibasav
export ORICONTROLLER_IP=vasabi-1234controller_ip4321-ibasav
export ORINETWORK_IP=vasabi-1234network_ip4321-ibasav
export ORICOMPUTE_IP=vasabi-1234compute_ip4321-ibasav
export ORICOMPUTE1_IP=vasabi-1234compute1_ip4321-ibasav
export ORIEXTERNAL_CIDR=vasabi-1234external_cidr4321-ibasav
export ORIMANAGEMENT_NETWORK=vasabi-1234management_network4321-ibasav
export ORISTART_FLOATING_IP=vasabi-1234start_floating_ip4321-ibasav
export ORIEND_FLOATING_IP=vasabi-1234end_floating_ip4321-ibasav
export ORIGATEWAY_IP=vasabi-1234gateway_ip4321-ibasav
export ORIMANAGEMENT_BROADCAST_ADDRESS=vasabi-1234broadcast_address4321-ibasav
export ORIDATA_TUNNEL_NETWORK_NODE_IP=vasabi-1234data_tunnel_network_node_ip4321-ibasav
export ORIDATA_TUNNEL_COMPUTE_NODE_IP=vasabi-1234data_tunnel_compute_node_ip4321-ibasav
export ORIDATA_TUNNEL_COMPUTE1_NODE_IP=vasabi-1234data_tunnel_compute1_node_ip4321-ibasav
export ORIDATA_TUNNEL_NETWORK_ADDRESS=vasabi-1234data_tunnel_network_address4321-ibasav
export ORILOCAL_REPO=vasabi-1234local_repo4321-ibasav
export ORILOCAL_SECURITY_REPO=vasabi-1234local_security_repo4321-ibasav
export ORIMANAGEMENT_NETWORK_NETMASK=vasabi-1234management_network_netmask4321-ibasav
export ORIDATA_TUNNEL_NETWORK_NETMASK=vasabi-1234data_network_netmask4321-ibasav
export ORIDNS_IP=vasabi-1234dns_ip4321-ibasav
export ORIKEYSTONE_PY_URL=vasabi-1234keystone-py-url4321-ibasav
#
export ORICONTROLLER_IP_NIC=vasabi-1234controller_ip_nic4321-ibasav
export ORINETWORK_IP_NIC=vasabi-1234network_ip_nic4321-ibasav
export ORIDATA_TUNNEL_NETWORK_NODE_IP_NIC=vasabi-1234data_tunnel_network_node_ip_nic4321-ibasav
export ORIVLAN_NETWORK_NODE_IP_NIC=vasabi-1234vlan_network_node_ip_nic4321-ibasav
export ORIEXTERNAL_CIDR_NIC=vasabi-1234external_cidr_nic4321-ibasav
export ORICOMPUTE_IP_NIC=vasabi-1234compute_ip_nic4321-ibasav
export ORICOMPUTE1_IP_NIC=vasabi-1234compute1_ip_nic4321-ibasav
export ORIDATA_TUNNEL_COMPUTE_NODE_IP_NIC=vasabi-1234data_tunnel_compute_node_ip_nic4321-ibasav
export ORIDATA_TUNNEL_COMPUTE1_NODE_IP_NIC=vasabi-1234data_tunnel_compute1_node_ip_nic4321-ibasav
export ORIVLAN_COMPUTE_NODE_IP_NIC=vasabi-1234vlan_compute_node_ip_nic4321-ibasav
export ORIVLAN_COMPUTE1_NODE_IP_NIC=vasabi-1234vlan_compute1_node_ip_nic4321-ibasav
export ORIODL_IP=vasabi-1234-odl-bery-ip-4321-ibasav
#
# extract the initial OPSInstaller directory
#
printf "\nExtract the initial OPSInstaller directory\nPress a key\n"

#
tar xvf OPSInstaller-init.tar 
#
printf "\nAssign password values\nsubstitution\n"

#
./config.d/exe-config-passwd.sh
#
printf "\nAssign parameter values\nsubstitution\n"
#
# Script to define parameter values below
#
ETC_FILES=OPSInstaller/*/files/*
SCRIPT_FILES=OPSInstaller/*/*.sh
#
# Change CONTROLLER_IP_NIC 
#
CHANGETOPIC=CONTROLLER_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORICONTROLLER_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORICONTROLLER_IP_NIC}/${CONTROLLER_IP_NIC}/g" ${ETC_FILES}
grep -n "${CONTROLLER_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORICONTROLLER_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORICONTROLLER_IP_NIC}/${CONTROLLER_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${CONTROLLER_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change NETWORK_IP_NIC 
#
CHANGETOPIC=NETWORK_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINETWORK_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINETWORK_IP_NIC}/${NETWORK_IP_NIC}/g" ${ETC_FILES}
grep -n "${NETWORK_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINETWORK_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINETWORK_IP_NIC}/${NETWORK_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${NETWORK_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change DATA_TUNNEL_NETWORK_NODE_IP_NIC 
#
CHANGETOPIC=DATA_TUNNEL_NETWORK_NODE_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NODE_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NODE_IP_NIC}/${DATA_TUNNEL_NETWORK_NODE_IP_NIC}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NODE_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NODE_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NODE_IP_NIC}/${DATA_TUNNEL_NETWORK_NODE_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NODE_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
CHANGETOPIC=VLAN_NETWORK_NODE_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIVLAN_NETWORK_NODE_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIVLAN_NETWORK_NODE_IP_NIC}/${VLAN_NETWORK_NODE_IP_NIC}/g" ${ETC_FILES}
grep -n "${VLAN_NETWORK_NODE_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIVLAN_NETWORK_NODE_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIVLAN_NETWORK_NODE_IP_NIC}/${VLAN_NETWORK_NODE_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${VLAN_NETWORK_NODE_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change EXTERNAL_CIDR_NIC 
#
CHANGETOPIC=EXTERNAL_CIDR_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIEXTERNAL_CIDR_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIEXTERNAL_CIDR_NIC}/${EXTERNAL_CIDR_NIC}/g" ${ETC_FILES}
grep -n "${EXTERNAL_CIDR_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIEXTERNAL_CIDR_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIEXTERNAL_CIDR_NIC}/${EXTERNAL_CIDR_NIC}/g" ${SCRIPT_FILES}
grep -n "${EXTERNAL_CIDR_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change COMPUTE_IP_NIC 
#
CHANGETOPIC=COMPUTE_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORICOMPUTE_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORICOMPUTE_IP_NIC}/${COMPUTE_IP_NIC}/g" ${ETC_FILES}
grep -n "${COMPUTE_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORICOMPUTE_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORICOMPUTE_IP_NIC}/${COMPUTE_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${COMPUTE_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change DATA_TUNNEL_COMPUTE_NODE_IP_NIC 
#
CHANGETOPIC=DATA_TUNNEL_COMPUTE_NODE_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE_NODE_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE_NODE_IP_NIC}/${DATA_TUNNEL_COMPUTE_NODE_IP_NIC}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_COMPUTE_NODE_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE_NODE_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE_NODE_IP_NIC}/${DATA_TUNNEL_COMPUTE_NODE_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_COMPUTE_NODE_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
CHANGETOPIC=VLAN_COMPUTE_NODE_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIVLAN_COMPUTE_NODE_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIVLAN_COMPUTE_NODE_IP_NIC}/${VLAN_COMPUTE_NODE_IP_NIC}/g" ${ETC_FILES}
grep -n "${VLAN_COMPUTE_NODE_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIVLAN_COMPUTE_NODE_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIVLAN_COMPUTE_NODE_IP_NIC}/${VLAN_COMPUTE_NODE_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${VLAN_COMPUTE_NODE_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change COMPUTE1_IP_NIC 
#
CHANGETOPIC=COMPUTE1_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORICOMPUTE1_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORICOMPUTE1_IP_NIC}/${COMPUTE1_IP_NIC}/g" ${ETC_FILES}
grep -n "${COMPUTE1_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORICOMPUTE1_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORICOMPUTE1_IP_NIC}/${COMPUTE1_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${COMPUTE1_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change DATA_TUNNEL_COMPUTE1_NODE_IP_NIC 
#
CHANGETOPIC=DATA_TUNNEL_COMPUTE1_NODE_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE1_NODE_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE1_NODE_IP_NIC}/${DATA_TUNNEL_COMPUTE1_NODE_IP_NIC}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_COMPUTE1_NODE_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE1_NODE_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE1_NODE_IP_NIC}/${DATA_TUNNEL_COMPUTE1_NODE_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_COMPUTE1_NODE_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
CHANGETOPIC=VLAN_COMPUTE1_NODE_IP_NIC
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIVLAN_COMPUTE1_NODE_IP_NIC}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIVLAN_COMPUTE1_NODE_IP_NIC}/${VLAN_COMPUTE1_NODE_IP_NIC}/g" ${ETC_FILES}
grep -n "${VLAN_COMPUTE1_NODE_IP_NIC}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIVLAN_COMPUTE1_NODE_IP_NIC}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIVLAN_COMPUTE1_NODE_IP_NIC}/${VLAN_COMPUTE1_NODE_IP_NIC}/g" ${SCRIPT_FILES}
grep -n "${VLAN_COMPUTE1_NODE_IP_NIC}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change OPS_LOGIN_NAME 
#
CHANGETOPIC=OPS_LOGIN_NAME
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORILOGINNAME}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORILOGINNAME}/${OPS_LOGIN_NAME}/g" ${ETC_FILES}
grep -n "${OPS_LOGIN_NAME}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORILOGINNAME}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORILOGINNAME}/${OPS_LOGIN_NAME}/g" ${SCRIPT_FILES}
grep -n "${OPS_LOGIN_NAME}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change OPS_LOGIN_PASS 
#
CHANGETOPIC=OPS_LOGIN_PASS
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORILOGINPASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORILOGINPASS}/${OPS_LOGIN_PASS}/g" ${ETC_FILES}
grep -n "${OPS_LOGIN_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORILOGINPASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORILOGINPASS}/${OPS_LOGIN_PASS}/g" ${SCRIPT_FILES}
grep -n "${OPS_LOGIN_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change OPS_TIMEZONE 
#
CHANGETOPIC=OPS_TIMEZONE
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORITIMEZONE}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORITIMEZONE}/${OPS_TIMEZONE}/g" ${ETC_FILES}
grep -n "${OPS_TIMEZONE}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORITIMEZONE}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORITIMEZONE}/${OPS_TIMEZONE}/g" ${SCRIPT_FILES}
grep -n "${OPS_TIMEZONE}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change NTP_SERVER0 
#
CHANGETOPIC=NTP_SERVER0
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER0}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINTP_SERVER0}/${NTP_SERVER0}/g" ${ETC_FILES}
grep -n "${NTP_SERVER0}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER0}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINTP_SERVER0}/${NTP_SERVER0}/g" ${SCRIPT_FILES}
grep -n "${NTP_SERVER0}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change NTP_SERVER1 
#
CHANGETOPIC=NTP_SERVER1
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER1}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINTP_SERVER1}/${NTP_SERVER1}/g" ${ETC_FILES}
grep -n "${NTP_SERVER1}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER1}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINTP_SERVER1}/${NTP_SERVER1}/g" ${SCRIPT_FILES}
grep -n "${NTP_SERVER1}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change NTP_SERVER2 
#
CHANGETOPIC=NTP_SERVER2
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER2}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINTP_SERVER2}/${NTP_SERVER2}/g" ${ETC_FILES}
grep -n "${NTP_SERVER2}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER2}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINTP_SERVER2}/${NTP_SERVER2}/g" ${SCRIPT_FILES}
grep -n "${NTP_SERVER2}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change NTP_SERVER3 
#
CHANGETOPIC=NTP_SERVER3
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER3}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINTP_SERVER3}/${NTP_SERVER3}/g" ${ETC_FILES}
grep -n "${NTP_SERVER3}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER3}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINTP_SERVER3}/${NTP_SERVER3}/g" ${SCRIPT_FILES}
grep -n "${NTP_SERVER3}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change NTP_SERVER_LOCAL 
#
CHANGETOPIC=NTP_SERVER_LOCAL
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER_LOCAL}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINTP_SERVER_LOCAL}/${NTP_SERVER_LOCAL}/g" ${ETC_FILES}
grep -n "${NTP_SERVER_LOCAL}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORINTP_SERVER_LOCAL}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINTP_SERVER_LOCAL}/${NTP_SERVER_LOCAL}/g" ${SCRIPT_FILES}
grep -n "${NTP_SERVER_LOCAL}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change HYPERVISOR 
#
CHANGETOPIC=HYPERVISOR
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIHYPERVISOR}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIHYPERVISOR}/${HYPERVISOR}/g" ${ETC_FILES}
grep -n "${HYPERVISOR}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIHYPERVISOR}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIHYPERVISOR}/${HYPERVISOR}/g" ${SCRIPT_FILES}
grep -n "${HYPERVISOR}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change INIT_IMAGE_LOCATION 
#
CHANGETOPIC=INIT_IMAGE_LOCATION
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIINIT_IMAGE_LOCATION}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIINIT_IMAGE_LOCATION}/${INIT_IMAGE_LOCATION}/g" ${ETC_FILES}
grep -n "${INIT_IMAGE_LOCATION}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIINIT_IMAGE_LOCATION}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIINIT_IMAGE_LOCATION}/${INIT_IMAGE_LOCATION}/g" ${SCRIPT_FILES}
grep -n "${INIT_IMAGE_LOCATION}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change INIT_IMAGE_NAME 
#
CHANGETOPIC=INIT_IMAGE_NAME
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIINIT_IMAGE_NAME}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIINIT_IMAGE_NAME}/${INIT_IMAGE_NAME}/g" ${ETC_FILES}
grep -n "${INIT_IMAGE_NAME}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIINIT_IMAGE_NAME}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIINIT_IMAGE_NAME}/${INIT_IMAGE_NAME}/g" ${SCRIPT_FILES}
grep -n "${INIT_IMAGE_NAME}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change OPS_MYSQL_PASS 
#
CHANGETOPIC=OPS_MYSQL_PASS
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIOPS_MYSQL_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIOPS_MYSQL_PASS}/${OPS_MYSQL_PASS}/g" ${ETC_FILES}
grep -n "${OPS_MYSQL_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIOPS_MYSQL_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIOPS_MYSQL_PASS}/${OPS_MYSQL_PASS}/g" ${SCRIPT_FILES}
grep -n "${OPS_MYSQL_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change DEMO_PASS 
#
CHANGETOPIC=DEMO_PASS
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDEMO_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIDEMO_PASS}/${DEMO_PASS}/g" ${ETC_FILES}
grep -n "${DEMO_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDEMO_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIDEMO_PASS}/${DEMO_PASS}/g" ${SCRIPT_FILES}
grep -n "${DEMO_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change ADMIN_PASS 
#
CHANGETOPIC=ADMIN_PASS
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIADMIN_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIADMIN_PASS}/${ADMIN_PASS}/g" ${ETC_FILES}
grep -n "${ADMIN_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIADMIN_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIADMIN_PASS}/${ADMIN_PASS}/g" ${SCRIPT_FILES}
grep -n "${ADMIN_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change domainname in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\n----------\n"
grep -n "${ORIDOMAINNAME}" ${ETC_FILES}
printf "\nDomain name (in etc files) changed to\n"
sed -i "s/${ORIDOMAINNAME}/${DOMAINNAME}/g" ${ETC_FILES}
grep -n "${DOMAINNAME}" ${ETC_FILES}
#
printf "\n----------\n"
grep -n "${ORIDOMAINNAME}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIDOMAINNAME}/${DOMAINNAME}/g" ${SCRIPT_FILES}
grep -n "${DOMAINNAME}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change controller ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORICONTROLLER_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nController's IP (in etc files) changed to\n"
sed -i "s/${ORICONTROLLER_IP}/${CONTROLLER_IP}/g" ${ETC_FILES}
grep -n "${CONTROLLER_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\n----------\n"
grep -n "${ORICONTROLLER_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nController's IP (in etc files) changed to\n"
sed -i "s/${ORICONTROLLER_IP}/${CONTROLLER_IP}/g" ${SCRIPT_FILES}
grep -n "${CONTROLLER_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change network ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution NETWORK_IP\n"

printf "\n----------\n"
grep -n "${ORINETWORK_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork's IP (in etc files) changed to\n"
sed -i "s/${ORINETWORK_IP}/${NETWORK_IP}/g" ${ETC_FILES}
grep -n "${NETWORK_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\n----------\n"
grep -n "${ORINETWORK_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork's IP (in etc files) changed to\n"
sed -i "s/${ORINETWORK_IP}/${NETWORK_IP}/g" ${SCRIPT_FILES}
grep -n "${NETWORK_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change compute ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution COMPUTE_IP\n"

printf "\n----------\n"
grep -n "${ORICOMPUTE_IP}" ${ETC_FILES} | tee ./tmpfile ; cat ./tmpfile
printf "\ncompute's IP (in etc files) changed to\n"
sed -i "s/${ORICOMPUTE_IP}/${COMPUTE_IP}/g" ${ETC_FILES}
grep -n "${COMPUTE_IP}" ${ETC_FILES}  | tee ./tmpfile ; cat ./tmpfile 
#
printf "\n----------\n"
grep -n "${ORICOMPUTE_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; cat ./tmpfile
printf "\ncompute's IP (in sh files) changed to\n"
sed -i "s/${ORICOMPUTE_IP}/${COMPUTE_IP}/g" ${SCRIPT_FILES}
grep -n "${COMPUTE_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; cat ./tmpfile 
#
printf "\nsubstitution COMPUTE1_IP\n"

printf "\n----------\n"
grep -n "${ORICOMPUTE1_IP}" ${ETC_FILES} | tee ./tmpfile ; cat ./tmpfile
printf "\ncompute's IP (in etc files) changed to\n"
sed -i "s/${ORICOMPUTE1_IP}/${COMPUTE1_IP}/g" ${ETC_FILES}
grep -n "${COMPUTE1_IP}" ${ETC_FILES}  | tee ./tmpfile ; cat ./tmpfile 
#
printf "\n----------\n"
grep -n "${ORICOMPUTE1_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; cat ./tmpfile
printf "\ncompute's IP (in sh files) changed to\n"
sed -i "s/${ORICOMPUTE1_IP}/${COMPUTE1_IP}/g" ${SCRIPT_FILES}
grep -n "${COMPUTE1_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; cat ./tmpfile 
#
# Change management network cidr in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIEXTERNAL_CIDR}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork cidr  (in etc files) changed to\n"
sed -i "s/${ORIEXTERNAL_CIDR}/${EXTERNAL_CIDR}/g" ${ETC_FILES}
grep -n "${EXTERNAL_CIDR}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIEXTERNAL_CIDR}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork cidr (in script files) changed to\n"
sed -i "s/${ORIEXTERNAL_CIDR}/${EXTERNAL_CIDR}/g" ${SCRIPT_FILES}
grep -n "${EXTERNAL_CIDR}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change management network address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIMANAGEMENT_NETWORK}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork address (in etc files) changed to\n"
sed -i "s/${ORIMANAGEMENT_NETWORK}/${MANAGEMENT_NETWORK}/g" ${ETC_FILES}
grep -n "${MANAGEMENT_NETWORK}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\n----------\n"
grep -n "${ORIMANAGEMENT_NETWORK}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork address (in script files) changed to\n"
sed -i "s/${ORIMANAGEMENT_NETWORK}/${MANAGEMENT_NETWORK}/g" ${SCRIPT_FILES}
grep -n "${MANAGEMENT_NETWORK}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change start floating ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORISTART_FLOATING_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nstart floating ip (in script files) changed to\n"
sed -i "s/${ORISTART_FLOATING_IP}/${START_FLOATING_IP}/g" ${ETC_FILES}
grep -n "${START_FLOATING_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
grep -n "${ORISTART_FLOATING_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nstart floating ip (in script files) changed to\n"
sed -i "s/${ORISTART_FLOATING_IP}/${START_FLOATING_IP}/g" ${SCRIPT_FILES}
grep -n "${START_FLOATING_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change end floating ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIEND_FLOATING_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nend floating ip (in script files) changed to\n"
sed -i "s/${ORIEND_FLOATING_IP}/${END_FLOATING_IP}/g" ${ETC_FILES}
grep -n "${END_FLOATING_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
grep -n "${ORIEND_FLOATING_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nend floating ip (in script files) changed to\n"
sed -i "s/${ORIEND_FLOATING_IP}/${END_FLOATING_IP}/g" ${SCRIPT_FILES}
grep -n "${END_FLOATING_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change gateway ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIGATEWAY_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ngateway ip (in etc files) changed to\n"
sed -i "s/${ORIGATEWAY_IP}/${GATEWAY_IP}/g" ${ETC_FILES}
grep -n "${GATEWAY_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIGATEWAY_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ngateway ip (in script files) changed to\n"
sed -i "s/${ORIGATEWAY_IP}/${GATEWAY_IP}/g" ${SCRIPT_FILES}
grep -n "${GATEWAY_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change broadcast address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIMANAGEMENT_BROADCAST_ADDRESS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nbroadcast address (in etc files) changed to\n"
sed -i "s/${ORIMANAGEMENT_BROADCAST_ADDRESS}/${MANAGEMENT_BROADCAST_ADDRESS}/g" ${ETC_FILES}
grep -n "${MANAGEMENT_BROADCAST_ADDRESS}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
grep -n "${ORIMANAGEMENT_BROADCAST_ADDRESS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nbroadcast address (in etc files) changed to\n"
sed -i "s/${ORIMANAGEMENT_BROADCAST_ADDRESS}/${MANAGEMENT_BROADCAST_ADDRESS}/g" ${SCRIPT_FILES}
grep -n "${MANAGEMENT_BROADCAST_ADDRESS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Data tunel network node ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NODE_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in etc files) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NODE_IP}/${DATA_TUNNEL_NETWORK_NODE_IP}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NODE_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NODE_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in script file) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NODE_IP}/${DATA_TUNNEL_NETWORK_NODE_IP}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NODE_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Data tunel compute node ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE_NODE_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in etc files) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE_NODE_IP}/${DATA_TUNNEL_COMPUTE_NODE_IP}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_COMPUTE_NODE_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE_NODE_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in script file) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE_NODE_IP}/${DATA_TUNNEL_COMPUTE_NODE_IP}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_COMPUTE_NODE_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Data tunel compute node ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE1_NODE_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in etc files) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE1_NODE_IP}/${DATA_TUNNEL_COMPUTE1_NODE_IP}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_COMPUTE1_NODE_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE1_NODE_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in script file) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE1_NODE_IP}/${DATA_TUNNEL_COMPUTE1_NODE_IP}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_COMPUTE1_NODE_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Data tunel network address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_ADDRESS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in etc files) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_ADDRESS}/${DATA_TUNNEL_NETWORK_ADDRESS}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_NETWORK_ADDRESS}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_ADDRESS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in script file) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_ADDRESS}/${DATA_TUNNEL_NETWORK_ADDRESS}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_NETWORK_ADDRESS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# local repo ip address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORILOCAL_REPO}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nlocal repo ip (in etc files) changed to\n"
sed -i "s/${ORILOCAL_REPO}/${LOCAL_REPO}/g" ${ETC_FILES}
grep -n "${LOCAL_REPO}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORILOCAL_REPO}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nlocal repo ip (in script file) changed to\n"
sed -i "s/${ORILOCAL_REPO}/${LOCAL_REPO}/g" ${SCRIPT_FILES}
grep -n "${LOCAL_REPO}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# local security repo ip address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORILOCAL_SECURITY_REPO}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nlocal repo ip (in etc files) changed to\n"
sed -i "s/${ORILOCAL_SECURITY_REPO}/${LOCAL_SECURITY_REPO}/g" ${ETC_FILES}
grep -n "${LOCAL_SECURITY_REPO}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORILOCAL_SECURITY_REPO}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nlocal repo ip (in script file) changed to\n"
sed -i "s/${ORILOCAL_SECURITY_REPO}/${LOCAL_SECURITY_REPO}/g" ${SCRIPT_FILES}
grep -n "${LOCAL_SECURITY_REPO}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# management network netmask in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIMANAGEMENT_NETWORK_NETMASK}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nmanage network netmask (in etc files) changed to\n"
sed -i "s/${ORIMANAGEMENT_NETWORK_NETMASK}/${MANAGEMENT_NETWORK_NETMASK}/g" ${ETC_FILES}
grep -n "${MANAGEMENT_NETWORK_NETMASK}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIMANAGEMENT_NETWORK_NETMASK}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nmanage network netmask (in script file) changed to\n"
sed -i "s/${ORIMANAGEMENT_NETWORK_NETMASK}/${MANAGEMENT_NETWORK_NETMASK}/g" ${SCRIPT_FILES}
grep -n "${MANAGEMENT_NETWORK_NETMASK}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# data network netmask in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NETMASK}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network netmask (in etc files) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NETMASK}/${DATA_TUNNEL_NETWORK_NETMASK}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NETMASK}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NETMASK}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network netmask (in script file) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NETMASK}/${DATA_TUNNEL_NETWORK_NETMASK}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NETMASK}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# dns ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDNS_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndns ip (in etc files) changed to\n"
sed -i "s/${ORIDNS_IP}/${DNS_IP}/g" ${ETC_FILES}
grep -n "${DNS_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIDNS_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndns ip changed to\n"
sed -i "s/${ORIDNS_IP}/${DNS_IP}/g" ${SCRIPT_FILES}
grep -n "${DNS_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# ODL IP in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIODL_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndns ip (in etc files) changed to\n"
sed -i "s/${ORIODL_IP}/${ODL_IP}/g" ${ETC_FILES}
grep -n "${ODL_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIODL_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndns ip changed to\n"
sed -i "s/${ORIODL_IP}/${ODL_IP}/g" ${SCRIPT_FILES}
grep -n "${ODL_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# keystone-py-url in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIKEYSTONE_PY_URL}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndns ip (in etc files) changed to\n"
sed -i "s/${ORIKEYSTONE_PY_URL}/${KEYSTONE_PY_URL}/g" ${ETC_FILES}
grep -n "${KEYSTONE_PY_URL}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\nsubstitution\n"

printf "\n----------\n"
grep -n "${ORIKEYSTONE_PY_URL}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndns ip changed to\n"
sed -i "s/${ORIKEYSTONE_PY_URL}/${KEYSTONE_PY_URL}/g" ${SCRIPT_FILES}
grep -n "${KEYSTONE_PY_URL}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# get rid of control-m from MS Windows..
#
sed -i "s///g" ${ETC_FILES}
sed -i "s///g" ${SCRIPT_FILES}
#
printf "\ntar the new OPSInstaller directory\n"   
printf "substitution\n"

#
tar cvf OPSInstaller.tar OPSInstaller
mv OPSInstaller.tar OPSInstaller/installer/OPSInstaller.tar
#
printf "Done."
