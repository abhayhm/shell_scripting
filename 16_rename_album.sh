#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to rename album properly by inserting index numbers.
Input: ./16_rename_album.sh good_day
Output: 
All .jpg files in current directory is renamed as: 
good_day_001.jpg good_day_002.jpg good_day_003.jpg
info

# Checking if argument is passed
if [ ! -z "$*" ]
then
	# Iterating through all .jpg files
	for jpg in $(ls --file-type *.jpg)
	do
		# Renaming all .jpg files to a given album name with index and ignoring warning 
		mv $jpg "$(echo "$(echo "$1_$(grep -o "[0-9]" <<< "$jpg" | tr -d '\n' )".jpg)")" 2>/dev/null
	done
	# Info for user
	echo "All .jpg files in current directory is renamed as: "
	# Displaying all .jpg files in current directory
	echo $(ls --file-type *.jpg)	
else
	# Warning user
	echo "Error: Pass the prefix name through command line"
fi
