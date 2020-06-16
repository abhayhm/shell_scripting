#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to search if a user is present on machine.
Input: ./32_user_present.sh root
Output: root is present
info

# Checking for arguments
if [ ! -z "$*" ]
then
	# Iterating through all the user 
	for user in $(cut -d: -f1 /etc/passwd)
	do
		# Checking for presence of given user
		if [ "$user" == "$*" ]
		then
			# Info for user (if found)
			echo "$* is present"
			exit
		fi
	done
	# Info for user (if not found)
	echo "$* not present"
else
	# Warning user for no argument
	echo "Error: Pass the argument through command line"
fi
