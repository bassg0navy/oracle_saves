#!/bin/bash
for i in $(cat ~/selinux/host_files/test_hosts); do
        echo "=== $i ==="
        ssh -A $i "echo $i ; sudo grep AVC /var/log/audit/audit.log" >> ~/selinux/results/test_audit_result
done
