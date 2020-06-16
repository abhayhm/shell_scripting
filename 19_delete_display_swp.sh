#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to delete all the .swp files found in a syatem or directory
Input: ./19_delete_display_swp.sh
Output: 
swp file(s) found :
/home/abhay/.vimrc.swp
info

# Check if argument is passed
if [ -z "$*" ]
then
	# Check if swp files are there in ~/ directory
	if [ ! -z "$(find ~/ -name '*.swp' 2>/dev/null)" ]
	then
		# Ifo for user
		echo "swp file(s) found :"
		find ~/ -name "*.swp" 2>/dev/null 
		# Deleting swp files
		find ~/ -name "*.swp" -delete 2>/dev/null
	else
		# Info for user
		echo "swp files not found"
	fi
else
	# Check if swp files are there in passed directory
	if [ ! -z "$(find $1 -name '*.swp' 2>/dev/null)" ]
	then
		# Info for user
		echo "swp file(s) found :"
		find $1 -name "*.swp" 2>/dev/null
		# Deleting swp files
		find $1 -name "*.swp" -delete 2>/dev/null
	else
		# Info for user
		echo "No swp files found in $1"
	fi
fi
