
# Openstack kilo installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2015  Kasidit Chanchio
#
#!/bin/bash -x
#
# glance
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage12-USER-glance-database.sh | tee log/s12-controller.log
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage13-USER-glance-endpoints.sh | tee log/s13-controller.log
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage14-SUDO-glance.sh | tee log/s14-controller.log
sleep 5
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage15-USER-verify-glance.sh | tee log/s15-controller.log
printf "\nnext run ./OS-installer-06-nova.sh\n"
