#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application displays length of each word in a string 
Input: Arguments are passed by command line (./10_string_length hello hai how are you ?
Output: Length of string (hello) – 5
		Length of string (hai) – 3
		Length of string (how) – 3
		Length of string (are) – 3
		Length of string (you) – 3
		Length of string (?) - 1
info
# Storing all the arguments in a variable
string=$*		
# Validating for no arguments warning
if [ ${#string} -eq 0 ]		
then
	# Instructing the user
	echo "Please pass arguments [atleast one character to get the output]"	
else
	# Iterating through each word
	for word in $string		
	do	
		# Printing string length for each word present
		echo "Length of string ($word) - ${#word}"		
	done
fi
