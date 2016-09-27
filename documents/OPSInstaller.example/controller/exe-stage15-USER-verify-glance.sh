# Openstack icehouse installation script 
# on ubuntu 14.04 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2014 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
echo "Run this script as a user."
echo -n "1. get cirros image...press"
#read varkey
#
echo "export OS_IMAGE_API_VERSION=2" | tee -a admin-openrc.sh demo-openrc.sh
source ./admin-openrc.sh

#read varkey
#
source ./admin-openrc.sh

wget http://download.cirros-cloud.net/0.3.4/cirros-0.3.4-x86_64-disk.img

printf "\n2. upload cirros image to glance...press"
#read varkey

openstack image create "cirros-0.3.4-x86_64-disk" \
  --file cirros-0.3.4-x86_64-disk.img \
  --disk-format qcow2 --container-format bare \
  --public

printf "\n3. list glnace images and remove cirros file..."
openstack image list

rm cirros-0.3.4-x86_64-disk.img
