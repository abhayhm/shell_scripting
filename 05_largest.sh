#!/bin/bash

<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to find the largest number among given numbers
Input: It take command line arguments (./05_largest.sh 12 32 23 45)
Output: Largest number: 45
info

# setting largest number as 0
largest=0	
buffer=$*
# Instructions
echo "This application is to find the largest number among given numbers" 
# Iterating over each number seperated by space to find the largest one
for number in $buffer		
do
	# Checking for wrong input
	if [[ $number =~ ^[0-9]+$ ]]		
	then
		# Checking for largest number
		if [ $largest -le $number ]		
		then
			# Setting the largest number
			largest=$number	
		fi		
	else		
		# Instructions
		echo "Please pass the arguments as given below:"	 
		echo "./largest 56 56 67 76 43"
		# Setting largest back to 0 on wrog input
		largest=0	
		exit
	fi
done
# Displaying largest number among the input
echo -n "Largest number is: "		
echo $largest
