#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application displays a list of options for user to select from and executes commands

Input: 
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all avaliable shells in your system
8. Hard disk information
9. CPU information
10. Memory information
11. File system information
12. Current running process
Enter the choice [Enter q to quit] : 

Output:Your shell directory: /home/abhay/emertex/assignment/second 
info

# Displaying menu for user 
echo "1. Currently logged users"
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all avaliable shells in your system"
echo "8. Hard disk information"
echo "9. CPU information"
echo "10. Memory information"
echo "11. File system information"
echo "12. Current running process"

# Reading users choice
read -p "Enter the choice [Enter q to quit] :" select
	
# Using cae for executing particular command
# Description for each output is specified so no comment line has been added for commands used
# Case q has been added incase if user wants to exit without getting any information
case $select in
	1)
		echo ""
		echo "Currently logged users: $(whoami)"
		echo ""
		;;
	2)
		echo ""
		echo "Your shell directory: $(pwd)"
		echo ""
		;;
	3)
		echo ""
		echo "Home directory: $HOME"
		echo ""
		;;
	4)
		echo ""
		echo "OS name and version: "
		echo "$(cat /etc/*-release)"
		echo ""
		;;
	5)
		echo ""
		echo "Current working directory: $(pwd)"
		echo ""
		;;
	6)
		echo ""
		echo "Number of users logged in: $(who -H)"
		echo ""
		;;
	7)
		echo ""
		echo "All avaliable shells in your system: "
		echo "$(cat /etc/shells)"
		echo ""
		;;
	8)
		echo ""
		echo "Hard disk information: $(sudo lshw -c disk)"
		echo ""
		;;
	9)
		echo ""
		echo "CPU information: "
		echo "$(cat /proc/cpuinfo)"
		;;
	10)
		echo ""
		echo "Memory information: $(free -m)"
		echo ""
		;;
	11)
		echo ""
		echo "File system information: $(df -Th)"
		echo ""
		;;
	12)
		echo ""
		echo "Currently running process $(ps -aux)"
		echo ""
		;;
	q)
		exit
		;;
	*)
		echo ""
		echo "Please select only from the above options:"
		echo ""
		exit
		;;
esac
