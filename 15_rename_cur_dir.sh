#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to rename current working directory with a given name
Input: ./15_rename_cur_dir.sh
Output: 
Current directory will be renamed to amazing
info

# Checking if argument is passed 
if [ ! -z "$*" ]
then

	# Renaming current directory to given name
	mv "$PWD" "${PWD%/*}/$1"
	# Info for users
	echo "Current directory will be renamed to $1"

else
	# Warning for user
	echo "Error: No arguments passed"
fi
