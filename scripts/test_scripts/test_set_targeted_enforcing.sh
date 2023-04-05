#!/bin/bash
for i in $(cat ~/selinux/host_files/test_hosts); do 
	echo "=== $i ==="; 
	ssh -A -o StrictHostKeyChecking=no $i "sudo touch /etc/selinux.enabled ; sudo /usr/sbin/setenforce 1 ; sudo sed -i 's/SELINUX=permissive/SELINUX=enforcing/' /etc/selinux/config"  
done
