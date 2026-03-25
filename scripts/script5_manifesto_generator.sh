#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Pranav

echo "------------------------------------"
echo " Open Source Manifest Generator"
echo "------------------------------------"

read -p "Tool you use daily: " tool
read -p "Freedom means: " freedom
read -p "What will you build: " build

date_now=$(date '+%d %B %Y')
file="manifesto_pranav.txt"

echo "Creating manifesto..."

echo "My Open Source Manifesto" > $file
echo "Date: $date_now" >> $file
echo "" >> $file

echo "I use $tool every day, which is built by the open-source community." >> $file
echo "For me, freedom means $freedom." >> $file
echo "I believe in sharing knowledge." >> $file
echo "One day, I will build $build and share it freely." >> $file

echo "" >> $file
echo "This is my contribution to open source." >> $file

echo "------------------------------------"
echo "Saved in: $file"
echo "------------------------------------"

cat $file