#! /bin/bash

<<info
Name: Abhay HM
Date: 29/05/2020
Description: This application is to print chess board: 
Output: Output can be visualized after execution
info

# Instruction
echo "This application prints chess board:"						

# Setting dimension to 8
for i in $(seq 1 8)												
do
	# Setting dimension to 8
	for j in $(seq 1 8)											
	do
		# Checking for block position to print color accordingly
		check=$(((i+j)%2))										
		if [ $check -eq 0 ]										
		then
			# Printing white box
			echo -e -n "\e[47m" " "							
		else
			# Printing black box
			echo -e -n "\e[40m" " "
		fi
	done
	# Getting back to normal
	echo -e -n "\e[0m" " "							
	echo ""
done

