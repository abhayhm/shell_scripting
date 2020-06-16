#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application to print greetings based on time.
Input: ./21_say_hello.sh
Output: Good evening
info

# Storing current hour in avariable from date command
hour=$(date +"%H")

# Checking for the range of time and printing salutation accordingly
if [[ "12" -gt $hour && $hour -ge "5" ]]
then
	echo "Good morning"
elif [[ "14" -gt $hour && $hour -ge "12" ]]
then
	echo "Good noon"
elif [[ "17" -gt $hour && $hour -ge "14" ]]
then 
	echo "Good afternoon"
elif [[ "21" -gt $hour && $hour -ge "17" ]]
then
	echo "Good evening"
else
	echo "Good night"
fi

