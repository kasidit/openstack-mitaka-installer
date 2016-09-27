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
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage01-SUDO-preinstall.sh | tee log/s01-controller.log
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage02-SUDO-network-preinstall.sh | tee log/s02-network.log
ssh -t openstack@compute sudo /bin/bash -x ./OPSInstaller/compute/exe-stage03-SUDO-compute-preinstall.sh | tee log/s03-compute.log
ssh -t openstack@compute1 sudo /bin/bash -x ./OPSInstaller/compute1/exe-stage03-SUDO-compute-preinstall.sh | tee log/s03-compute.log
printf "\nnext run ./OS-installer-02-mysql.sh \n"
