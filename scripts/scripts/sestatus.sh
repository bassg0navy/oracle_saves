#!/bin/bash
for i in $(cat ~/operations_work/selinux/host_files/hosts); do
        echo "=== $i ==="
        ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -A $i "echo $i ; /usr/sbin/sestatus" >> ~/selinux/results/sestatus_result
done
