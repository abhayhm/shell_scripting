#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to create an infinite feedback loop
Input: ./24_redirection.sh
Note: Here hello.txt has been used which is to be present in same directory 
Output:
Before loop file contents
hello
After loop file contents
hello
hello
hello
hello
hello
.
.

info

# Info for user
echo "Before loop file contents"
# Printing content of file
cat hello.txt
# Info for user
echo "After loop file contents"
# Creating infinite loop using redirection and piping and printing
tail  -f hello.txt >> hello.txt | tail -f hello.txt
