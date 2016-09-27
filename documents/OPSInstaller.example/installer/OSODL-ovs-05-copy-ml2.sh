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
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage47-SUDO-odl-copy-ml2-controller.sh | tee log/s47-controller.log
sleep 15
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage48-SUDO-odl-copy-ml2-network.sh | tee log/s48-network.log
sleep 15
ssh -t openstack@compute sudo /bin/bash -x ./OPSInstaller/compute/exe-stage49-SUDO-odl-copy-ml2-compute.sh | tee log/s49-compute.log
sleep 15
ssh -t openstack@compute1 sudo /bin/bash -x ./OPSInstaller/compute1/exe-stage50-SUDO-odl-copy-ml2-compute1.sh | tee log/s50-compute1.log
sleep 15
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage51-SUDO-odl-set-l3-network.sh | tee log/s51-network.log
