#!/bin/bash -x 
#
# Openstack icehouse installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2014  Kasidit Chanchio
#
#
# run below before launch this script
#printf "\nyou are supposed to be running ssh-agent at this point.\n"
# --->ssh-agent /bin/bash
# --> ssh-add
# copy Installer 

pwd
#ssh -t openstack@network sudo timedatectl set-timezone Asia/Bangkok
# time zone should be one of vasabi parametert
#ssh -t openstack@network sudo date --set=\"$(date)\"

echo "copy installer to nodes.. press"
#read varkey
scp OPSInstaller.tar openstack@controller:/home/openstack/OPSInstaller.tar
scp OPSInstaller.tar openstack@network:/home/openstack/OPSInstaller.tar
scp OPSInstaller.tar openstack@compute:/home/openstack/OPSInstaller.tar
scp OPSInstaller.tar openstack@compute1:/home/openstack/OPSInstaller.tar
#
echo "remove existing OPSInstaller on controller node"
#read varkey
ssh openstack@controller rm -rf /home/openstack/OPSInstaller | tee log/extract-controller-current.log
echo "remove existing OPSInstaller on network node"
#read varkey
ssh openstack@network rm -rf /home/openstack/OPSInstaller | tee log/extract-network-current.log
echo "remove existing OPSInstaller on compute node"
#read varkey
ssh openstack@compute rm -rf /home/openstack/OPSInstaller | tee log/extract-compute-current.log
echo "remove existing OPSInstaller on compute1 node"
#read varkey
ssh openstack@compute1 rm -rf /home/openstack/OPSInstaller | tee log/extract-compute-current.log
#

echo "extract installer files on controller.. press"
#read varkey
ssh openstack@controller tar xvf /home/openstack/OPSInstaller.tar | tee log/extract-controller-current.log
ssh openstack@controller /home/openstack/OPSInstaller/remove-all-except-controller.sh 
echo "extract installer files on network node.. press"
#read varkey
ssh openstack@network tar xvf /home/openstack/OPSInstaller.tar | tee log/extract-network-current.log
ssh openstack@network /home/openstack/OPSInstaller/remove-all-except-network.sh 
echo "extract installer files on compute node.. press"
#read varkey
ssh openstack@compute tar xvf /home/openstack/OPSInstaller.tar | tee log/extract-compute-current.log
ssh openstack@compute /home/openstack/OPSInstaller/remove-all-except-compute.sh
echo "extract installer files on compute1 node.. press"
#read varkey
ssh openstack@compute1 tar xvf /home/openstack/OPSInstaller.tar | tee log/extract-compute-current.log
ssh openstack@compute1 /home/openstack/OPSInstaller/remove-all-except-compute1.sh 
#

