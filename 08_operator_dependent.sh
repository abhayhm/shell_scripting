#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application displays the answer for input arguments and operator
Input: ./08_operator_dependent.sh 1342+
Output: Sum is 10
info

# Storing command line argument in a variable
buffer=$*

# Storing first number to a variable to do operation
result=${buffer:0:1}

# Checking if not arguments passed
if [ -z $buffer ]
then
	# Warning user
	echo "Error: Please pass the argument"
	exit
# Validating for correctness of input
elif [[ ! "$buffer" =~ ^[0-9]+[-+/*]+$ ]]
then
	# Warning for user
	echo "Error: Please pass the valid arguments"
	echo "Sample: ./09_operator_dependent.sh 1342+"
	exit
else
	# On successful validation executing the expression
	# Taking each number separatly except for the operator
	for num in $(seq 1 $((${#buffer}-2)))
	do
		# Doing the math and storing in a variable
		result=$(($result${buffer: -1:1}${buffer:$num:1}))
	done	
fi

# Checking for what operation has been done and displaying the result
if [ "${buffer: -1:1}" == '+' ]
then
	echo "Sum is $result"
elif [ "${buffer: -1:1}" == '-' ]
then
	echo "Sub is $result"
elif [ "${buffer: -1:1}" == '/' ]
then
	echo "Div is $result"
else
	echo "Mul is $result"
fi
