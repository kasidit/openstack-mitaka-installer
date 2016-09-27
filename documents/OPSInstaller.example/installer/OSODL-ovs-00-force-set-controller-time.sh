#!/bin/bash
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
