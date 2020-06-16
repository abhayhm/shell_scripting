#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to print contents of directories passed
Input: ./27_output.sh ~ ~/emertex
Output: 
/home/abhay:
Desktop    Downloads  Files  Pictures  Templates  Videos
Documents  emertex    Music  snap      test

/home/abhay/emertex:
1589891946_linux_systems.pdf  ls_assignments_problem_statements.pdf
assignment		      shell\ scripting
info

# Checking if arguments are passed
if [ ! -z "$*" ]
then
	# Getting each argument to operate on
	for directory in $*		
	do
		# Checking if directory exists
		if [ -e "$directory" ]
		then
			# Displaying contents of directory if exist
			echo "$directory:"
			echo "$(dir $directory)"
			echo ""
		else
			# Warning if directory not exist
			echo "Cannot access $directory : No such a file or directory."
		fi
	done
else
	# Printing current directory contents of no arguments passed
	echo "$(dir)"
	echo ""
fi
