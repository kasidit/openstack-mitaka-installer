# Openstack icehouse installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2014  Kasidit Chanchio
#
# run with sudo or as root.
#
#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
#
echo "manual" > /etc/init/keystone.override
apt-get -y install keystone apache2 libapache2-mod-wsgi 
cp files/keystone.conf /etc/keystone/keystone.conf 
echo "su -s /bin/sh -c \"keystone-manage db_sync\" keystone"
su -s /bin/sh -c "keystone-manage db_sync" keystone
#
echo keystone-manage fernet_setup --keystone-user keystone --keystone-group keystone
keystone-manage fernet_setup --keystone-user keystone --keystone-group keystone
#
cp files/apache2.conf /etc/apache2/apache2.conf 
cp files/wsgi-keystone.conf /etc/apache2/sites-available/wsgi-keystone.conf

ln -s /etc/apache2/sites-available/wsgi-keystone.conf /etc/apache2/sites-enabled
service apache2 restart
rm -f /var/lib/keystone/keystone.db
