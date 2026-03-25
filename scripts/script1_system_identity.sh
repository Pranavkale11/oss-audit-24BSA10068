#!/bin/bash
# Script 1: System Identity Report
# Author: Pranav
# Project: OSS Audit (Python)

# Basic info
name="Pranav"
software="Python"

kernel=$(uname -r)
user=$(whoami)
uptime=$(uptime -p)
date_now=$(date)
distro=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo "------------------------------------"
echo " Open Source Audit Report"
echo "------------------------------------"
echo "Name       : $name"
echo "Software   : $software"
echo "------------------------------------"
echo "Distro     : $distro"
echo "Kernel     : $kernel"
echo "User       : $user"
echo "Uptime     : $uptime"
echo "Date       : $date_now"
echo "------------------------------------"
echo "This system runs on open-source principles (GPL)"
echo "Python uses PSF License"
echo "------------------------------------"