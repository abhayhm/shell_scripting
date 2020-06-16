#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to demonstrate simple calculator.
Input: This script takes command line arguments (./04_calculator 21 + 32)
Output: Answer: 53
info

# Assigning all the command line inputs to a variable to use it ahead
input=$*	

# Instruction for user
echo "This application is to demonstrate simple calculator"			
# Checking for wrong input format				
if [[ "$input" =~ ^[0-9]+[[:space:]]+[-+*/]+[[:space:]]+[0-9]+$ ]]		
then
	# If input matches the given format printing thr output
	echo -n "Answer: "		
	echo "$input" | bc 
else
	# On wrong input format warning the user
	echo "Please pass the arguments as described" 	
		echo "| 21 + 32 | 21 - 32 | 21 / 32 | 21 * 32 | followed by the script name."
		echo " ( Example: ./calculator.sh 23 + 45)"
fi
