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
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage54-SUDO-odl-pip-install.sh | tee log/s54-controller.log
sleep 5
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage54p2-SUDO-odl-restart-network.sh | tee log/s54-controller.log
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage55-USER-odl-initial-network.sh | tee log/s55-controller.log
#
printf "\nThat's it for now.\n"
