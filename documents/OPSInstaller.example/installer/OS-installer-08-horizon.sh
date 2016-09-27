# Openstack kilo installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2015  Kasidit Chanchio
#
#!/bin/bash -x
#
# horizon
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage32-SUDO-horizon.sh | tee log/s32-controller.log
printf "\nnext run ./OS-installer-09-set-dvr.sh\n"
