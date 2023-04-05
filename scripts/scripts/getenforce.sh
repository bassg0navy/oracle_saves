#!/bin/bash
for i in $(cat ~/selinux/host_files/hosts); do 
	echo "=== $i ===" 
	ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -A $i "echo $i ; /usr/sbin/getenforce" >> ~/selinux/results/getenforce_result 
done
