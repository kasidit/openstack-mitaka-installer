# Openstack kilo installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2015  Kasidit Chanchio
#
#!/bin/bash -x
#
# nova 
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage16-USER-nova-database.sh | tee log/s16-controller.log
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage17-USER-nova-endpoints.sh | tee log/s17-controller.log
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage18-SUDO-nova.sh | tee log/s18-controller.log
sleep 5
ssh -t openstack@compute sudo /bin/bash -x ./OPSInstaller/compute/exe-stage19-SUDO-nova-compute.sh | tee log/s19-compute.log
sleep 5
ssh -t openstack@compute1 sudo /bin/bash -x ./OPSInstaller/compute1/exe-stage19-SUDO-nova-compute.sh | tee log/s19-compute.log
sleep 10
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage20-USER-verify-nova.sh | tee log/s20-controller.log
printf "\nnext run ./OS-installer-07-neutron.sh\n"
