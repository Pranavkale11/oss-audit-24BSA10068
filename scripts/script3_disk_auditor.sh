#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Pranav

echo "------------------------------------"
echo " Directory Audit"
echo "------------------------------------"

dirs=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

for d in "${dirs[@]}"
do
    if [ -d "$d" ]; then
        perm=$(ls -ld $d | awk '{print $1, $3, $4}')
        size=$(du -sh $d 2>/dev/null | cut -f1)
        echo "$d => $perm | Size: $size"
    else
        echo "$d not found"
    fi
done

echo "------------------------------------"

# python directory check
if [ -d "/usr/lib/python3" ]; then
    echo "Python directory exists"
    ls -ld /usr/lib/python3
fi

echo "------------------------------------"