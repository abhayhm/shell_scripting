#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to rename a file or directory replaced by lower or upper case letters
Input: ./14_file_upper_lower.sh
Output: 
Files are renamed in lowercase and directories are renamed in upper case
info

# Iterating through all files and folders in current folder
for file in $(ls)
do
	# Checking if object is file or directory
	if [ -f $file ]
	then
		# Renaming all files to lower case
		echo $file | tr [:upper:] [:lower:] | xargs -I '{}' mv $file {} 2>/dev/null 
	else
		# Renaming all directories to upper case
		echo $file | tr [:lower:] [:upper:] | xargs -I '{}' mv $file {} 2>/dev/null
	fi
done

# Info for user
echo "Files are renamed in lowercase and directories are renamed in upper case"
