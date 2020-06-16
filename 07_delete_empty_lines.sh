#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application deletes all empty lines from a given file 
Input: ./07_delete_empty_lines.sh something.txt
Output: Empty lines are deleted
To see the actual output please open the file passed as argument
info

# Copying command line argument to a variable
filename=$*

# Checking if user has passed command line arguments
if [ -z "$filename" ]
then

	# Printing error message on no argument
	echo "Error: Please pass the file through command line."
else

	# Using sed command to remove empty lines
	sed -i '/^$/d' $filename
	# Printing success message
	echo "Empty lines are deleted"
fi
