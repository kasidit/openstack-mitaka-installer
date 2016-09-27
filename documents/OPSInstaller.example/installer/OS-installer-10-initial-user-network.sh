# Openstack kilo installation script on ubuntu 14.04 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2015  Kasidit Chanchio
#
#!/bin/bash -x
#
# initial user network
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage31-USER-initial-network.sh | tee log/s31-controller.log
printf "\nThat's it for now.\n"
