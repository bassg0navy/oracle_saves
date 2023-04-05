#!/bin/bash
for i in $(cat ~/selinux/host_files/test_hosts); do 
	echo "=== $i ===" 
	ssh -A $i "echo $i ; /usr/sbin/getenforce" >> ~/selinux/results/test_getenforce_result 
done
