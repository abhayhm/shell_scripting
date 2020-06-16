#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to print ccontents of file from given line number to next given number of lines
Input: ./12__print_lines.sh 3 2 file.txt
Output:   line 3
          line 4
info

# Checking if empty arguments are passed
if [ -z "$*" ]
then
	# Warning user for empty arguments
	echo "Error: No arguments passed"
	echo "Usage: ./17_print_lines.sh  start_line upto_line filename"
	echo "Example: ./17_print_lines.sh 4 5 file.txt"
else
	# Checking for prescribed format of arguments
	if [[ "$1 $2" =~ ^[0-9]+[[:space:]]+[0-9]+$ ]]
	then
		# Checking if given file exists
		if [ -e $3 ]
		then
			# Displaying the n number of line from nth line
			tail -n +$1 $3 | head -n $2
		else
			# Warning for file not found error
			echo "Error: File not exist"
		fi
	else
		# Warning for wrong arguments passed
		echo "Error wrong arguments passed"
		echo "Usage: ./17_print_lines.sh  start_line upto_line filename"
	    echo "Example: ./17_print_lines.sh 4 5 file.txt"
	fi
fi
