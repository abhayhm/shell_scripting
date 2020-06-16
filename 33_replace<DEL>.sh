#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to replace 20% lines in a C file randomly and replace it with pattern <----------DEL---------->
Input: ./33_replace<DEL>.sh main.c
Output:
Before replacing:

#incude <stdio.h>
int main()
{
printf(“Hello world\n”);
}

After replacing:

#incude <stdio.h>
int main()
{
printf(“Hello world\n”);
<----------Deleted---------->
info

# Check for argument
if [ ! -z "$*" ]
then
	# Check if file exists
	if [ -e "$*" ]
	then
		# Check for empty file
		if (( $(wc -l $* | awk '{print $1}')>0 ))
		then
			# Getting 20% of total number of lines
			lines_to_del=$(echo "$(wc -l $* | awk '{print $1}')/5" | bc)
			
			# Displaying file contents before replacing
			echo "Before replacing:"
			echo ""
			echo "$(cat $*)"
			echo ""

			# Replacing random 20% of lines in a file with given pattern
			for line in $(shuf -i 1-$(echo "$(wc -l $* | awk '{print $1}')") -n $lines_to_del)
			do
				# Replacing line with given pattern
				sed -i "$line s/.*/<----------Deleted---------->/" $*
			done	
			
			# Displaying file contents after replacing
			echo "After replacing:"
            echo ""
			echo "$(cat $*)"
			echo ""

		else
			# Warning for empty file
			echo "Error: $* is empty file. So can't replace string."
		fi
	else
		# Warning for no file found
		echo "Error: No such a file."
	fi
else
	# Warning for no argument passes
	echo "Error: Pass the file name through command line"
fi
