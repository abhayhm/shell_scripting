#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to convert string lower to upper and upper to lower
Input: 
./22_upper_lower.sh file.txt [may vary]
1-Lower to upper
2-Upper to lower
Select option: 2
Output: 
line 1
line 2
info

# Setting flag to check for successful execution
flag=0

# Checking for non empty argument
if [ ! -z "$*" ]
then
	# Checking if entered file exists
	if [ -e $* ]
	then

		# Checking if file is empty
		if [ ! -s "$*" ]
		then
			# Warning for empty file
			echo "Error: File is empty"
			exit
		fi

		# Prompting user for options untile correct option is chosen
		while [ $flag -eq 0 ]
		do
			# Instructions from user
			echo "1-Lower to upper"
			echo "2-Upper to lower"
			
			# Reading from user
			read -p "Select option:" option
			
			# Checking for user preference
			if [[ "$option" -eq 1 ]]
			then
				# Converting content of file to upper case and flagging
				echo "$(tr [[:lower:]] [[:upper:]] < $*)"
				flag=1
			# Checking for user preference	
			elif [[ "$option" -eq 2 ]]
			then
				# Converting content of file to lower case and flagging
				echo "$(tr [[:upper:]] [[:lower:]] < $*)"
				flag=1
			else
				# Warning for incorrect option
				echo "Error: Incorrect option"
			fi
		done
	else
		# Warning if file not fount 
		echo "Error: File not found"
	fi
else
	# Warning for empty argument or no argument passed
	echo "Error: Pass argument"
	echo "Usage: ./22_upper_lower.sh <filename>"
fi
