#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application sorts the given input in specified order using bubble sort
Input: ./12_sorting.sh -a 32 3 34 4 43
Output: Ascending order of array is 3 4 32 34 43
info

# Storing command line input in array
buffer=($@)

# Verifying for non empty arguments
if [ ${#buffer} -eq 0 ]
then
	# Warning user
	echo "Error: Pass the arguments"
	exit
fi

# Verifying for correct option
if [ "$buffer" == '-a' -o "$buffer" == '-d' ]
then
	# Loop to go through all the elements of array starting from second
	for num in $(seq 1 ${#buffer[@]})
	do
		# Verifying that only numbers are entered
		if [[ "$num" =~ ^[0-9]+$ ]]
		then
			:
		else
			# Warning user
			echo "Error: Enter only numbers to sort"
			exit
		fi
	done 
	
	# Checking for sorting option to do the operation
	if [ "$buffer" == '-a' ]
	then
		# Iterating through all the elements from second one [bubble sort]
		for ptr in $(seq 1 $((${#buffer[@]}-2)))
		do
			for num in $(seq 1 $((${#buffer[@]}-$ptr-1)))
			do	
				# Actual sorting process for ascending order
				if [ ${buffer[$num]} -gt ${buffer[$(($num+1))]} ]
				then
					# Interchanging of the element position
					temp=${buffer[$num]}
					buffer[$num]=${buffer[$(($num+1))]}
					buffer[$(($num+1))]=$temp
				fi
			done
		done
	else
		# Iterating through all the elements from second one [bubble sort]
		for ptr in $(seq 1 $((${#buffer[@]}-2)))
        do
			for num in $(seq 1 $((${#buffer[@]}-$ptr-1)))
            do
				# Actual sorting process for descending order
				if [ ${buffer[$num]} -lt ${buffer[$(($num+1))]} ]
            	then
					# Interchanging of element position
            		temp=${buffer[$num]}
                	buffer[$num]=${buffer[$(($num+1))]}
 					buffer[$(($num+1))]=$temp 
 				fi
        	done
		done
	fi
else
	# Warning user
	echo "Error: Pass valid choise."
	echo "Usage: ./13_sorting.sh -a 12 43 56  [-a / -d for sorting order]"fi
	exit
fi

# Checking for type of sortinng done
if [ "$buffer" == '-a' ]
then
	# Printing ascending sort
	echo "Ascending order of array is ${buffer[@]:1}"
else
	# Printing descending sort
	echo "Descending order of array is ${buffer[@]:1}"
fi
