#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to print fifth line of a given file.
Input: ./23_print_fifth_line.sh file.txt
Output: Line 5
info

# Checking if argument is empty or no argument passed
if [ ! -z "$*" ]
then
	# Checking if passed file exist
	if [ -e $* ]
	then
		# Checking if passed file is empty
		if [ -s "$*" ]
		then
			# Checking if passed file has 5 or more lines
			if [ $(wc -l < "$*") -gt 4 ]
			then
				# Displaying content in 5th line of the file
				echo "$(head -n 5 "$*" | tail -n 1 )"
			else
				# Warning for lesser number of lines
				echo "Error: File has only $(wc -l < "$*") lines. So can't print 5th line"
			fi
		else
			# Warning for empty file
			echo "Error: File is empty"
		fi
	else 
		# Warning for file not found
		echo "Error: No such file"
	fi
else
	# Error for no argument passed
	echo "Error: Please pass the file name in command line"
	echo "Usage: ./23_print_fifth_line.sh"
fi
