#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to display number of users with specified user id range on the system. [Default range is 500 to 10000]
Input: ./30_print_user_ids.sh 0 10
Output: 
Total count of user ID between 0 to 10 is: 11
info

# Getting all the user identifiers
user_ids=$(cut -d: -f3 /etc/passwd)

# Setting default count for a range to 0
count=0
 
# Checking for valid arguments
if (( $# == 2 ))
then
	# Iterating through all user id's
	for id in $user_ids
	do
		# Checking for user id's between range
		if (( $id <= $2 && $id >= $1 ))
		then
			# Counting the valid user id's
			count=$(($count+1))
		fi
	done
	# Printing number of user id's in range
	echo "Total count of user ID between $1 to $2 is: $count"

# Checking for empty arguments	
elif [ -z "$*" ]
then
	# Iterating through all user id's
	for id in $user_ids     
	do
		# Checking for user id's between default range
		if (( $id <= 10000 && $id >= 500 ))
	   	then  
			# Counting the valid user id's
			count=$(($count+1))
 
		fi
     done
	 # Printing number of user id's in default range
	 echo "Total count of user ID between 500 to 10000 is: $count"
else
	# Warning user
	echo "Error: Please pass correct argument"
	echo "Usage: ./30_print_user_ids.sh 0 200"
fi
