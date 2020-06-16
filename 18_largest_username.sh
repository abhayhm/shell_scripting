#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to print longest and shortest usernames in this machine
Input: This doesn't take any input 
Output:
The longest user name: gnome-initial-setup
The shortest user name: lp
info

# Reading output list of user names in /etc/passwd folder in array [buffer]
readarray -t buffer <<< "$(cut -d: -f1 /etc/passwd)" 

# Storing first username output in variable named shortest and longest
shortest=${buffer[0]}
longest=${buffer[0]}

# Iterating through each element of array of usernames
for string in "${buffer[@]}"
do
	# Checking for the shortest username
	if [ ${#shortest} -gt ${#string} ]
	then
		# Assigning the shortest username to a variable
		shortest=$string
	fi
	# Checking for the longest username
	if [ ${#longest} -lt ${#string} ]
	then
		# Assigning the longest username to a variable
		longest=$string
	fi
done

# Printing the longest and shortest username
echo "Longest name is: $longest"
echo "Smallest name is: $shortest"
