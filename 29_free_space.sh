#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to display names of file system having less than 10% free disk space
Input: ./29_free_space.sh
Output: 
Filesystem('s) udev tmpfs  tmpfs tmpfs tmpfs  tmpfs  have less than 10% freespace
info

# Starting format
echo -n "Filesystem('s) "

# Checking for all filesystems with less than 10% free diskspace
for ptr in $(seq 0 9)
do
	# # Skippting empty linnes in output
	if [ ! -z "$( df | grep " $(($ptr))%")" ]
	then
		# Printing filesystems with less than 10% free diskspace
	   	echo -n "$( df -Ph | grep " $(($ptr))%" | awk '{print $1}' | tr '\n' " ") "
	fi
done
# Ending format
echo "have less than 10% freespace"
