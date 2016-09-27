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
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage21-USER-neutron-database.sh | tee log/s21-controller.log
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage22-USER-neutron-endpoints.sh | tee log/s22-controller.log
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage23-SUDO-neutron.sh | tee log/s23-controller.log
sleep 8
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage24-USER-verify-neutron.sh | tee log/s24-controller.log
sleep 5
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage25-SUDO-network-neutron.sh | tee log/s25-network.log
sleep 5
ssh -t openstack@controller sudo /bin/bash -x ./OPSInstaller/controller/exe-stage26-SUDO-reconfig-neutron-nova.sh | tee log/s26-controller.log
sleep 5
ssh -t openstack@network sudo /bin/bash -x ./OPSInstaller/network/exe-stage27-SUDO-ovs-service.sh | tee log/s27-network.log
sleep 8
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage28-USER-verify-neutron2.sh | tee log/s28-controller.log
sleep 5
ssh -t openstack@compute sudo /bin/bash -x ./OPSInstaller/compute/exe-stage29-SUDO-compute-neutron.sh | tee log/s29-compute.log
sleep 5
ssh -t openstack@compute1 sudo /bin/bash -x ./OPSInstaller/compute1/exe-stage29-SUDO-compute-neutron.sh | tee log/s29-compute.log
sleep 5
ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage30-USER-verify-neutron3.sh | tee log/s30-controller.log
#printf "\nCreate initial networks to test clasic neutron installation.\n If you want to use neutron with classic openvswitch,\npress any key, run ./OS-installer-08-horizon.sh and stop. Otherwise, press Ctrl C to skip.\n"
#read varkey
#ssh -t openstack@controller /bin/bash -x ./OPSInstaller/controller/exe-stage31-USER-initial-network.sh | tee log/s31-controller.log
printf "\nnext run ./OS-installer-08-horizon.sh\n"
