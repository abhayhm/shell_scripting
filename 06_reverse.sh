#! /bin/bash

<<info
Name: Abhay HM
Date: 29/05/2020
Description: This application is to demonstrate simple calculator.
Input: Enter your input: 21 + 32
Output: Answer: 53
info

# store single digit
storedigit=0
 
# store number in reverse order
reversed=0
status=0
while [ $status -eq 0 ]
do
	read -p "Enter the number to reverse: " num
	if [ $num ]
	then
		status=1
		# use while loop to caclulate the sum of all digits
		while [ $num -ne 0 ]
		do
    		storedigit=$(( $num % 10 )) # get Remainder 
    		
			num=$(( $num / 10 ))  # get next digit
    		
			# store previoues number and current digit in rev
			reversed=$(($reversed*10+$storedigit)) 
		done
	else
		echo "Please enter valid input"
	fi
done
 
echo  "Reversed number: $reversed"
