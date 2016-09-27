# Openstack kilo installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2015  Kasidit Chanchio
#
#!/bin/bash -x
#
# node setups
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage00-SUDO-update.sh | tee log/s00-controller.log
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage00-SUDO-update.sh | tee log/s00-network.log
ssh -t openstack@compute sudo /bin/bash -x ./OPSInstaller/compute/exe-stage00-SUDO-update.sh | tee log/s00-compute.log
ssh -t openstack@compute1 sudo /bin/bash -x ./OPSInstaller/compute1/exe-stage00-SUDO-update.sh | tee log/s00-compute.log
printf "\n\nThis step reboots every node! Now, this node (the controller) will be rebooted. Wait until all rebooted nodes resume and proceed to run ./OS-installer-01-node-setup.sh... \n"
sudo reboot
