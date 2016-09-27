# Openstack icehouse installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2014  Kasidit Chanchio
#
#!/bin/bash -x 
#
#ssh-keygen -t rsa
#
echo "create new public-private keys"
#
rm /home/openstack/.ssh/*
#
./expectssh-keygen.sh
#
echo "accept host keys"
./expectsshyesno.sh openstack controller 
./expectsshyesno.sh openstack network
./expectsshyesno.sh openstack compute
./expectsshyesno.sh openstack compute1

echo "propagate credentials"
sshpass -popenstack scp /home/openstack/.ssh/id_rsa.pub openstack@controller:/home/openstack/authorized_keys
sshpass -popenstack scp /home/openstack/.ssh/id_rsa.pub openstack@network:/home/openstack/authorized_keys
sshpass -popenstack scp /home/openstack/.ssh/id_rsa.pub openstack@compute:/home/openstack/authorized_keys
sshpass -popenstack scp /home/openstack/.ssh/id_rsa.pub openstack@compute1:/home/openstack/authorized_keys

sshpass -popenstack ssh  openstack@controller "(mkdir /home/openstack/.ssh; mv /home/openstack/authorized_keys /home/openstack/.ssh/authorized_keys)"
sshpass -popenstack ssh  openstack@network "(mkdir /home/openstack/.ssh; mv /home/openstack/authorized_keys /home/openstack/.ssh/authorized_keys)"
sshpass -popenstack ssh  openstack@compute "(mkdir /home/openstack/.ssh; mv /home/openstack/authorized_keys /home/openstack/.ssh/authorized_keys)"
sshpass -popenstack ssh  openstack@compute1 "(mkdir /home/openstack/.ssh; mv /home/openstack/authorized_keys /home/openstack/.ssh/authorized_keys)"

echo "check date time of controller network compute"
ssh  openstack@controller date
ssh  openstack@network date
ssh  openstack@compute date
ssh  openstack@compute1 date

echo "set sudoers"
sshpass -popenstack scp files/adjustsudoer.sh openstack@controller:/home/openstack/adjustsudoer.sh
sshpass -popenstack scp files/adjustsudoer.sh openstack@network:/home/openstack/adjustsudoer.sh
sshpass -popenstack scp files/adjustsudoer.sh openstack@compute:/home/openstack/adjustsudoer.sh
sshpass -popenstack scp files/adjustsudoer.sh openstack@compute1:/home/openstack/adjustsudoer.sh

./expectsetsudoer.sh openstack controller openstack
./expectsetsudoer.sh openstack network openstack
./expectsetsudoer.sh openstack compute openstack
./expectsetsudoer.sh openstack compute1 openstack

echo "set timezone of controller network compute"
ssh -t openstack@controller sudo timedatectl set-timezone Asia/Bangkok
ssh -t openstack@network sudo timedatectl set-timezone Asia/Bangkok
ssh -t openstack@compute sudo timedatectl set-timezone Asia/Bangkok
ssh -t openstack@compute1 sudo timedatectl set-timezone Asia/Bangkok

echo "set date of controller network compute"
ssh -t openstack@controller sudo date --set=\"$(date)\"
ssh -t openstack@network sudo date --set=\"$(date)\"
ssh -t openstack@compute sudo date --set=\"$(date)\"
ssh -t openstack@compute1 sudo date --set=\"$(date)\"
