# Openstack kilo installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2015  Kasidit Chanchio
#
#!/bin/bash -x
#
# rabbitmq
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage07-SUDO-rabbit.sh | tee log/s07-controller.log
printf "\nnext run ./OS-installer-04-keystone.sh\n"
