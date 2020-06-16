#!/bin/bash
<<info
Name: Abhay HM
Date: 02/06/2020
Description: This application is to generate random passwords including alphanumeric
Input: ./20_random_password.sh
Output:
csEP7F<y
,2="On*R
Azrj<u~Z
6av8N7OB
;bGshH1x
+;Qii1IH
KD@@hPJB
JGLBG1NG
WNqes<ME
tF/</.!<
info

# Looping 10 times to generate 10 different passwords
for password in $(seq 1 1 10)
do
	# Generating 8 digit alphanumeric password using urandom and printing
	< /dev/urandom tr -dc 'A-Za-z0-9!"#$%&'\''*+,-./:;<=>?@\^_`~' | head -c${1:-8};echo;
done
