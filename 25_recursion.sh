#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to print argument passed to the function using recursion
Input:./25_recursion.sh 5 2 4 1 n kj i
Output:
5
2
4
1
n
kj
i
info

# Check if arguments are passed
if [ ! -z "$*" ]
then

	# Writing recursive function description
	recursion(){
		# Printing every element using $1
		echo "$1"
		# Checking if there are more elements in array
		if [[ ! -z "${@:2}" ]]
		then
			# Calling recursion function by slicing array
			recursion ${@:2}
		fi
	}
	# Calling recursive function first time
	recursion $@
else
	# Warning user
	echo "Error: Pass the arguments through  command line"
fi
