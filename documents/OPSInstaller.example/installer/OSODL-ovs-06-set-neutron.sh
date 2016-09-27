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
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage52-USER-odl-neutron-database.sh | tee log/s52-controller.log
sleep 5
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage53-SUDO-odl-neutron.sh | tee log/s53-controller.log
sleep 5
#
