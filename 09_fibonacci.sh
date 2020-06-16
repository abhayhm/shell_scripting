#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application displays a fibonacci series up to a given boundary
Input: Enter limit for fib series: 4
Output: Answer: 0 1 1 2 3 
info

#setting a flag to track valid execution of script
flag=0		

echo "This application display's a fibonacci series up to a given boundary:"

n1=0		#Assigning a variable for first number of series
n2=1		#Assigning a variable for second number of series
sum=0		#Assigning a variable to store the sum

#Checking if script executed successfully
while [ $flag -eq 0 ]		
do
	# Reading input fromm user
	read -p "Enter limit for fib series:" n
	#Validating for non integer input		
	if [[ $n =~ ^[0-9]+$ ]]		
	then			
		#Validating for negative and incorrect input
		if [ $n -ge 0 ]			
		then
			#Setting flag for successfull execution
			flag=1				
			#Checking for the entered limit
			while [ $sum -le $n ]		
			do
				#Printing fib series
				echo -n "$sum "		
				#Below 3 lines includes proceding to next number	
				sum=$(($n1 + $n2))		
				n1=$n2
				n2=$sum
			done
			#Getting the curser to new line after execution
			echo ""			
		else
			echo "Enter a number which is greater than or equal to 0 to visualise fib series"
		fi
	else
		echo "Please enter a valit integer input"
	fi
done
