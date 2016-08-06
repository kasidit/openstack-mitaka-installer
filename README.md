# openstack-mitaka-installer
The "OPSInstaller" OpenStack Mitaka Installation Script 

Copyright 2016 Kasidit Chanchio, Vasinee Siripoon, Somkiat Kosolsombat 

Contact: kasiditchanchio@gmail.com <br>
department of computer science <br>
faculty of science and technology <br>
Thammasat University.

You will issue every instruction on the controller node
of your OpenStack deployment. 

To use: 
<pre>
$ tar xvf openstack-mitaka-installer-0.x.x.tar
$ cd openstack-mitaka-installer
</pre>

modify ./install-paramrc.sh file to set parameter
values as you'd like. 
<pre>
$ vi ./install-paramrc.sh
</pre>

substitute the parameter values in the script 
template tar file. 

<pre>
$ ./exe-config-installer.sh
</pre>

Install openstack on controller, network, compute, and compute1.
If you want to install OpenStack mitaka with classic open vswitch 
network, run the following commands.

<pre>
$ cd OPSInstaller/installer
$ ./OS-installer-00-1...(please fill in the rest of the name)
$ ./OS-installer-00-2...
$ ./OS-installer-01-...
$ ./OS-installer-02-...
$ ./OS-installer-03-...
$ ./OS-installer-04-...
$ ./OS-installer-05-...
$ ./OS-installer-06-...
$ ./OS-installer-07-...
$ ./OS-installer-08-...
(skip ./OS-installer-09-...)
$ ./OS-installer-10-...
</pre>

In case you want to install OpenStack mitaka and deploy 
Distributed Virtual Router (DVR) network, run the following commands. 

<pre>
$ cd OPSInstaller/installer
$ ./OS-installer-00-1...(please fill in the rest of the name)
$ ./OS-installer-00-2...
$ ./OS-installer-01-...
$ ./OS-installer-02-...
$ ./OS-installer-03-...
$ ./OS-installer-04-...
$ ./OS-installer-05-...
$ ./OS-installer-06-...
$ ./OS-installer-07-...
$ ./OS-installer-08-...
$ ./OS-installer-09-...
$ ./OS-installer-10-...
</pre>

This installation package also contains a set of scripts for 
OpenStack mitaka and OpenDayLight (ODL) Beryllium integration.  
If you want to run it, the scripts assume you already have OpenStack 
with classic open vswitch network deployed. 

However, before the integration you have to delete all instances, 
routers, and networks from your OpenStack deployment. 
Make sure the ODL host is running and necessary ODL features 
are installed. Then, run

<pre>
$ cd OPSInstaller/installer
$ ./OSODL-ovs-00-...
$ ./OSODL-ovs-01-...
$ ./OSODL-ovs-02-...
$ ./OSODL-ovs-03-...
$ ./OSODL-ovs-04-...
$ ./OSODL-ovs-05-...
$ ./OSODL-ovs-06-...
$ ./OSODL-ovs-07-...
</pre>

Note: This script is written for educational purpose. 

For more information, please consult the following 
documents: 

1. http://vasabilab.cs.tu.ac.th/ 
2. http://docs.openstack.org/
 
