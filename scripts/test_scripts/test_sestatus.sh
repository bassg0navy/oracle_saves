#!/bin/bash
for i in $(cat ~/selinux/host_files/test_hosts); do
        echo "=== $i ==="
        ssh -A $i "echo $i ; /usr/sbin/sestatus" >> ~/selinux/results/test_sestatus_result
done
