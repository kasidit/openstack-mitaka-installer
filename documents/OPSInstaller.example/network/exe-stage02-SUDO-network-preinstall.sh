# Openstack icehouse installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2014  Kasidit Chanchio
#
# run with sudo or as root
#
#!/bin/bash -x
cd $HOME/OPSInstaller/network
pwd
printf "1. set interface/hosts files.. press any key\n"
#read varkey
cp files/interfaces /etc/network/interfaces
cp files/hosts /etc/hosts

printf "2. set ntp server.. press any key\n"
#read varkey
apt-get -y install chrony
cp files/chrony.conf /etc/chrony/chrony.conf
service chrony restart

printf "3. restart eth networking.. press\n"
#read varkey
ifdown eth0
ifup eth0
ifdown eth1
ifup eth1
ifdown eth2
ifup eth2
ifdown eth3
ifup eth3
#
# prevent fragmentation 
#
#ifconfig eth0 mtu 1700
#ifconfig eth1 mtu 1700
#ifconfig eth3 mtu 1700
#
sleep 5
date
# restore later 
#cp /etc/sudoers files/sudoers.save
#echo "vasabi ALL=NOPASSWD: ALL" >> /etc/sudoers
#
ifconfig
