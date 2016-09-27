# openstack-mitaka-installer
The "OPSInstaller" OpenStack Mitaka Installation Script 

Copyright 2016 Kasidit Chanchio, Vasinee Siripoon, Somkiat Kosolsombat 

Contact: kasiditchanchio@gmail.com <br>
department of computer science <br>
faculty of science and technology <br>
Thammasat University.

You will issue every instruction on the controller node
of your OpenStack deployment. 

First, login to the your openstack account on the controller node and invoke 
the following commands to obtain this OpenStack installer script. 
<pre>
$ cd $HOME
$ git clone https://github.com/kasidit/openstack-mitaka-installer
$ cd openstack-mitaka-installer
</pre>

In our example, we follow the example
configuration parameters in the <a href="http://docs.openstack.org/mitaka/install-guide-ubuntu/">official installation manual (using ubuntu)</a> of 
openstack as illustrated in the picture below.<br> 
<img src="documents/architecture.png"> <br>
From the figure, we use the same configuration as those of OpenStack installation 
manual for the managment network, data tunnel network, v-lan network, and external network.
However, this script still require the followings. 
<ul>
<li> The name of the 4 hosts in the figure must be "controller", "network", "compute",
and "compute1". </li>
<li> The username of openstack account on every host must be the same. 
The password of those account must be the same across the hosts as well 
(but can be different from the username).
<li> You should make sure that the time on the controller node is up-to-date before installation
</ul>
Based on the above configuration and requirements, modify ./install-paramrc.sh file by entering 
environment variables' values that fit your deployment. 
<pre>
$ vi ./install-paramrc.sh
</pre>

<<<<<<< HEAD
You may view an example of this file <a href="./install-paramrc.sh">here</a>. After that, run the script below to substitute the parameter values in the script 
template tar file (OPSInstaller-init.tar). <b>PLEASE RUN EVERY SCRIPT DESCRIBED HERE AS 
A USER. DO NOT USE SUDO TO RUN THE SCRIPTS!</b> 
=======
After that, run the script below to substitute the parameter values in the script 
template tar file (OPSInstaller-init.tar).  
>>>>>>> 160335237f27ab7ce549bfeed80f390406977806

<pre>
$ ./exe-config-installer.sh
</pre>

After running the script, you should see a new directory "OPSInstaller" being created. 
This directory contains all scripts and configuration files that will later be run on every node 
<<<<<<< HEAD
to install OpenStack. The details of every script in the "OPSInstaller" can be seen in the 
<pre>
OPSInstaller/scriptmap.html
</pre> 
file. To view this file, you may have to copy the whole "OPSInstaller" directory out from the 
controller to your PC and use a browser to view the file.  

You may take a look at <b>a set of example scripts</b> to be generated in the "OPSInstaller" directory 
in the 
<pre>
<a href="documents/OPSInstaller.example/scriptmap.html">documents//OPSInstaller.example/scriptmap.html</a> 
</pre>
file in the document directory. If you want to install OpenStack manually, you may follow the <a href="http://docs.openstack.org/mitaka/install-guide-ubuntu/">OpenStack Mitaka Installation Guide</a> and refer to information in the scriptmap.html file as example. 
=======
to install OpenStack.
>>>>>>> 160335237f27ab7ce549bfeed80f390406977806

<strong><u>
1. install OpenStack mitaka with classic open vswitch network
</u></strong>

On the controller node. 
<pre>
$ cd $HOME
$ cd openstack-mitaka-installer
$ cd OPSInstaller/installer
$ ./OS-installer-00-1...(please fill in the rest of the name)
$ ./OS-installer-00-2...
<<<<<<< HEAD
</pre>
<p>
The last script will reboot all hosts. You have to login to the controller node again and make sure that every other node is up before continue the installation. 
<pre>
$ cd $HOME
$ cd openstack-mitaka-installer
$ cd OPSInstaller/installer
=======
>>>>>>> 160335237f27ab7ce549bfeed80f390406977806
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

<strong><u>
2. Install OpenStack mitaka and deploy 
Distributed Virtual Router (DVR) network
</u></strong>

<pre>
$ cd $HOME
$ cd openstack-mitaka-installer
$ cd OPSInstaller/installer
$ ./OS-installer-00-1...(please fill in the rest of the name)
$ ./OS-installer-00-2...
<<<<<<< HEAD
</pre>
<p>
The last script will reboot all hosts. You have to login to the controller node again and make sure that every other node is up before continue the installation. 
<pre>
$ cd $HOME
$ cd openstack-mitaka-installer
$ cd OPSInstaller/installer
=======
>>>>>>> 160335237f27ab7ce549bfeed80f390406977806
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

<strong><u>
2. OpenStack mitaka and OpenSayLight Beryllium Integration 
</u></strong>

This installation package also contains a set of scripts for 
OpenStack mitaka and OpenDayLight (ODL) Beryllium integration.  
If you want to run it, the scripts assume you already have OpenStack 
with classic open vswitch network deployed. 

However, before the integration you have to delete all instances, 
routers, and networks from your OpenStack deployment. 
Make sure the ODL host is running and necessary ODL features 
are installed. You may consult our <a href="http://sciencecloud-community.cs.tu.ac.th/?p=238">
OpenStack and OpenDayLight integration blog post</a> or youtube videos in [4] for more details.  
When ready, run the following commands. 

<pre>
$ cd $HOME
$ cd openstack-mitaka-installer
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

1. http://sciencecloud-community.cs.tu.ac.th/ 
2. http://vasabilab.cs.tu.ac.th/ 
3. http://docs.openstack.org/
4. <a href="https://www.youtube.com/playlist?list=PLmUxMbTCUhr4tJhdkREiJdIMJo-P-vX2M">OpenStack Mitaka installation with Distributed Virtual Router videos</a>
5. <a href="https://www.youtube.com/playlist?list=PLmUxMbTCUhr4bjpV3ysL6_G_tokfpNyDb">OpenStack and OpenDayLight integration youtube videos</a>
 
