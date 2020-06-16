#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to lock down file permissions for a particular dierectory
Input: ./28_lock_permissions.sh /amazing
Output: 
Before locking
total 24
-rwxrw-rw- 1 abhay abhay  365 Jun 15 15:55 15_rename_cur_dir.sh
-rwxrw-rw- 1 abhay abhay  119 May 28 16:09 check_num.sh
-rwxrw-rw- 1 abhay abhay  105 May 28 16:49 mod.sh
-rwxrw-rw- 1 abhay abhay  236 May 28 16:02 rect.sh

After locking
total 24
-rwx------ 1 abhay abhay  365 Jun 15 15:55 15_rename_cur_dir.sh
-rwx------ 1 abhay abhay  119 May 28 16:09 check_num.sh
-rwx------ 1 abhay abhay  105 May 28 16:49 mod.sh
-rwx------ 1 abhay abhay  236 May 28 16:02 rect.sh
info

# Check if argument is passed
if [ ! -z "$*" ]
then
	# Check if passed directory is exist
	if [ -d "$1" ]
	then
		# Infor for user
		echo "Before locking"
		# List all files with permissions info
		ls -all $1
		echo ""

		# Iterate through all files in a given directory
		for file in $(ls $1)
		do
			# Change permissions for others and groups
			chmod og-rwx "$1$file"
		done

		# Info for user
		echo "After locking"
		# List all files with permission info
		ls -all $1
		echo ""
	else
		# Warning user
		echo "Error: directory not exist"
	fi
else
	# Warning user
	echo "Error: Pass the directory in command line"
fi	
