#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to display number of executable files in all the directories in \$PATH
Input: ./31_executable_path.sh
Output: 

Current dir: /usr/local/sbin
current count: 0

Current dir: /usr/local/bin
current count: 64

Current dir: /usr/sbin
current count: 231

Current dir: /usr/bin
current count: 1749

Current dir: /sbin
current count: 155

Current dir: /bin
current count: 155

Current dir: /usr/games
current count: 1

Current dir: /usr/local/games
current count: 0

Current dir: /snap/bin
current count: 17

Total - 2372

info

# Initializing total count to 0
total=0

# Iterating through each path in \$PATH
for folder in $(seq 1 1 $(echo $PATH | tr ':' ' ' | wc -w))
do
	# Setting count to 0
	count=0

	# Information for user
	echo "Current dir: $(echo $PATH | cut -d: -f$folder)"
	echo -n "current count: "

	# Iterating through all files in each path mentioned in \$PATH
	for file in $(echo $PATH | cut -d: -f$folder | xargs -I {} ls {}/)
	do
		# Checking if file is executable 
		if [ -x "$(echo $PATH | cut -d: -f$folder)/$file" ]
		then
			
			# Counting executable files
			count=$(($count+1))
		fi
	done

	# Counting total
	total=$(($total+$count))

	# Information for user
	echo $count
	echo ""
done

# Information for user
echo "Total - $total"
