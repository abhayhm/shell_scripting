#! /bin/bash

<<info
Name: Abhay HM
Date: 29/05/2020
Description: This is a script to read input from user and print a pattern.
Input: Enter a number to generate pattern: 3
Output  1
	1 2
	1 2 3
info
# variable to store the status of execution of script
status=0    															
# Loop: exits on successful execution and prompts for invalid and garbage input
while [ $status -eq 0 ]													
do
	# User input n to generate script
	read -p 'Enter a number to generate pattern:' n
	# Checking if input is integer						
	if [[ ! "$n" =~ ^[0-9]+$ ]]											
	then
		echo "Please enter an integer number only"
	# Checking for a garbage input
	elif [ $n -eq 1 ]														
	then
		# Instructions and prompting for a valid input
		echo "Please enter a greater value for a understandable output" 
		echo "Output for a given value is:"
		echo "1"
	# Checking for invalid input
	elif [ $n -le 0 ]													
	then
		# Instruction for user
		echo "Please enter a value greater than 0"						
	else																
		status=1														
		for i in $(seq 1 $n)
		do
			for j in $(seq 1 $i)
			do
				# -n used to print on the same line
				echo -n "$j "											
			done
			echo ""														
		done
	fi

done
