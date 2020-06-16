#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to determine whether given file system or mount point is mounted
Input: ./26_mounted_fs.sh /dev/sda9
Output: 
File-system /dev/sda9 is mounted on / and is having 60% used space with 11787084 KB free.
info

# Checking if file system has been passed through command line
if [ ! -z $* ]
then
	# Storing the output of particular file system 
	# [ stores empty string in case not mounted]
	file_sys=$(df -k | grep $* | awk '{print $1}')
	
	# Checking if file system is mounted
	if [ ! -z $file_sys ]
	then
		# Getting mount point
		mount_point=$(df -k | grep $* | awk '{print $6}')
		
		# Getting used space in %
		disk_used=$(df -k | grep $* | awk '{print $5}')
		
		# Getting free space in KB
		disk_free=$(df -k | grep $* | awk '{print $4}')
		
		# Showing information
		echo "File-system $file_sys is mounted on $mount_point and is having $disk_used used space with $disk_free KB free."
	else
		# Information if not mounted
		echo "$* is not mounted."
	fi
else
	# Warning user for no arguments
	echo "Error: Please pass the name of the file-system through command line."
fi
