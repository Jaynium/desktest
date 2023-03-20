#!/bin/bash
clear
grep -m 1 'model name' /proc/cpuinfo
read -p "Press any key to continue..."
clear
sudo dmidecode --type 19
read -p "Press any key to continue..."
clear
echo System Manufacturer
sudo dmidecode -s system-manufacturer
echo   
echo System Model Number
sudo dmidecode -s system-product-name
echo   
read -p "Press enter to continue..."
clear
lsblk --scsi
fdisk -l
echo   
echo Check if unknown drives are present
read -p "Press enter key to continue..."
sudo lshw -class disk
echo   
echo Verify if unmounted drives exist
echo   
read -p "Press enter key to continue..."
clear
ping google.com
read -p "Testing Complete..."

# Created by Justin Pavao
# Purpose of file is to list CPU Model Name, RAM capacity,
# mounted drives, unmounted drives, and battery capacity
# also tests speakers and launches keyboard tester
