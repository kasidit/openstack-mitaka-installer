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
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage40-SUDO-odl-purge-neutron-ovs-plugin-network.sh | tee log/s40-network.log
#sleep 5
ssh -t openstack@compute sudo /bin/bash -x ./OPSInstaller/compute/exe-stage41-SUDO-odl-purge-neutron-ovs-plugin-compute.sh | tee log/s41-compute.log
#sleep 5
ssh -t openstack@compute1 sudo /bin/bash -x ./OPSInstaller/compute1/exe-stage42-SUDO-odl-purge-neutron-ovs-plugin-compute1.sh | tee log/s42-compute1.log
#sleep 10
#printf "\nnext run ./OSODL-installer-02-...\n"
