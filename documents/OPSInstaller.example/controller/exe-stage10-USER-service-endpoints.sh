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
echo -n "* create Identity service and endpoint...press"
#read varkey

export OS_TOKEN=bc6b7e45bc06dda018fa
export OS_URL=http://controller:35357/v3
export OS_IDENTITY_API_VERSION=3

openstack service create \
  --name keystone --description "OpenStack Identity" identity
openstack endpoint create --region RegionOne \
  identity public http://controller:5000/v3
openstack endpoint create --region RegionOne \
  identity internal http://controller:5000/v3
openstack endpoint create --region RegionOne \
  identity admin http://controller:35357/v3

echo -n "* create Admin projects, users, and roles...press"
#read varkey
openstack domain create --description "Default Domain" default
openstack project create --domain default --description "Admin Project" admin

openstack user create --domain default --password adminpassword admin

openstack role create admin

openstack role add --project admin --user admin admin

printf "\n3. create Service project...press"
#read varkey

openstack project create --domain default --description "Service Project" service
printf "\n4. create Demo project...press"
#read varkey

openstack project create --domain default --description "Demo Project" demo

openstack user create --domain default --password demopassword demo

openstack role create user

openstack role add --project demo --user demo user

printf "\n5. Verify keystone Id Service...get a token by user id... press any key"
#read varkey

sudo cp files/keystone-paste.ini /etc/keystone/keystone-paste.ini

unset OS_TOKEN OS_URL

openstack --os-auth-url http://controller:35357/v3 \
  --os-project-domain-name default --os-user-domain-name default \
  --os-project-name admin --os-username admin --os-password adminpassword token issue

openstack --os-auth-url http://controller:5000/v3 \
  --os-project-domain-name default --os-user-domain-name default \
  --os-project-name demo --os-username demo --os-password demopassword token issue

