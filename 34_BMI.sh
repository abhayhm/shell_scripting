#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to calculate bmi.
Input: ./34_BMI.sh
Enter weight (kg): 45.5
Enter height (m): 1.5
Output: 
You are normal
info

# Reading height and weight from user
read -p "Enter weight (kg): " weight
read -p "Enter height (m): " height

# Checking for valid input (weight)
if [[ $weight =~ ^[0-9]+\.?[0-9]*$ ]]
then
	# Checking for valid input (height)
	if [[ $height =~ ^[0-9]+\.?[0-9]*$ ]]
	then
		# Calculating BMI using formula and piping with bc
		bmi=$(echo "scale=1; $weight/$(echo $height*$height | bc )" | bc)
		
		# Checking for BMI info (under weight)
		if [ 1 -eq "$(echo "${bmi}<18.5" | bc)" ]
		then
			echo "You are underweight"

		# Checking for BMI info (normal)
		elif [ 1 -eq "$(echo "${bmi}>=18.5" | bc)" -a 1 -eq "$(echo "${bmi}<=24.9" | bc)" ]
		then
			echo "You are normal"
		
		# Checking for BMI info (over weight)
		elif [ 1 -eq "$(echo "${bmi}>=25" | bc)" -a 1 -eq "$(echo "${bmi}<=29.9" | bc)" ]
		then
			echo "You are overweight"

		# BMI info (obese)
		else
			echo "Your are obese"
		fi
	else
		echo "Error: Enter valid height"
	fi
else
	echo "Error: Enter valid weight"
fi
