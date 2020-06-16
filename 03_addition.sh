#! /bin/bash

<<info
Name: Abhay HM
Date: 29/05/2020
Description: This is a script to read two numbers from user and print sum.
Input: Enter number 1: 30.2
       Enter number 2: 40.02
Output: Sum of entered numbers is: 70.22
info

# Status variable to keep track of successful execution
status=0																
echo "This application adds two numbers ang gives the result"
# Checking if the script executed successfully
while [ $status -eq 0 ]													
do
	read -p "Enter number 1:" num1	# Reading first number from user
	read -p "Enter number 2:" num2	# Reading second number from user
	
	# Validating for correct input checks for integers and float kind of input
	if [[ "$num1" =~ ^[0-9]+[.][0-9]+$ || "$num1" =~ ^[0-9]+$ && "$num2" =~ ^[0-9]+$ || "$num2" =~ ^[0-9]+[.][0-9]+$ ]]								
	then
		echo -n "Sum of entered numbers is:"
		# Printing the output generated using bc and piping
		echo "$num1 + $num2" | bc										
		status=1														
	else
		# Instructions for user to enter correct input
		echo "Please enter valid numbers"								
	fi
done
