#!/bin/bash
# Script 2: Package Inspector
# Author: Pranav

pkg="python3"

echo "------------------------------------"
echo " Checking package: $pkg"
echo "------------------------------------"

if command -v $pkg &> /dev/null
then
    echo "Status   : Installed"
    echo "Version  : $($pkg --version)"
    echo "Path     : $(which $pkg)"
else
    echo "Status   : Not Installed"
fi

echo "------------------------------------"
echo "Package info (dpkg):"
dpkg -l | grep $pkg | head -5
echo "------------------------------------"

# small note (case concept)
case $pkg in
    python3) echo "Python: community-driven programming language" ;;
    *) echo "Open-source tool" ;;
esac