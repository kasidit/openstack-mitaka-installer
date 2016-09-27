# Openstack icehouse installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2014  Kasidit Chanchio
#
# Run this with sudo or as root

#!/bin/bash -x
cd $HOME/OPSInstaller/controller
pwd
#
apt-get -y install debconf-utils

debconf-set-selections <<< 'mariadb-server-5.5 mysql-server/root_password password mysqlpassword' 
debconf-set-selections <<< 'mariadb-server-5.5 mysql-server/root_password_again password mysqlpassword' 
apt-get -y install mariadb-server
apt-get -y install python-pymysql
#
printf "* set openstack.cnf configuration... press any key\n" 
#read varkey

cp files/openstack.cnf /etc/mysql/conf.d/openstack.cnf

#printf "* restart mysql & delete anonymous acct... press\n"
#read varkey

service mysql restart
#mysql_secure_installation
mysql -u root -pmysqlpassword -e "UPDATE mysql.user SET Password=PASSWORD('mysqlpassword') WHERE User='root';"
mysql -u root -pmysqlpassword -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"
mysql -u root -pmysqlpassword -e "DELETE FROM mysql.user WHERE User='';"
mysql -u root -pmysqlpassword -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%';"
mysql -u root -pmysqlpassword -e "FLUSH PRIVILEGES;"
#
#exit 0
printf "* install nosql... press any key\n"
#read varkey

apt-get -y install mongodb-server mongodb-clients python-pymongo
cp files/mongodb.conf /etc/mongodb.conf

service mongodb stop
rm /var/lib/mongodb/journal/prealloc.*
service mongodb start

