#!/bin/bash
for i in $(cat ~/selinux/host_files/hosts); do
        echo "=== $i ==="
        ssh -A $i "echo $i ; sudo grep AVC /var/log/audit/audit.log" >> ~/selinux/results/audit_result
done
