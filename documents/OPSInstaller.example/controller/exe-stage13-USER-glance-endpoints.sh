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
source ./admin-openrc.sh
#
openstack user create --domain default --password bcef72a7b1d64c987dd7 glance
#
openstack role add --project service --user glance admin
#
openstack service create --name glance \
  --description "OpenStack Image service" image

openstack endpoint create --region RegionOne \
  image public http://controller:9292
openstack endpoint create --region RegionOne \
  image internal http://controller:9292
openstack endpoint create --region RegionOne \
  image admin http://controller:9292
