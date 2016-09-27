# Openstack kilo installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2015  Kasidit Chanchio
#
#!/bin/bash -x
#
# neutron
#sleep 5
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage43-SUDO-odl-set-ovs-manager-network.sh | tee log/s43-network.log
#sleep 5
ssh -t openstack@compute sudo /bin/bash -x ./OPSInstaller/compute/exe-stage44-SUDO-odl-set-ovs-manager-compute.sh | tee log/s44-compute.log
#sleep 5
ssh -t openstack@compute1 sudo /bin/bash -x ./OPSInstaller/compute1/exe-stage45-SUDO-odl-set-ovs-manager-compute1.sh | tee log/s45-compute1.log
#sleep 10
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage46-SUDO-set-ext-network.sh | tee log/s46-network.log
#printf "\nnext run ./OSODL-installer-03-...\n"
