#!/bin/bash
echo "enter the file to count characters"
read character
number_of_char=`wc -c $character | awk -F " " '{print $1}'`
if [ $number_of_char -gt 300 ]
then
	echo "number of characters in a file exceeds the required count" | mail -s "exceeds characters" kishukish91@gmail.com
	echo "characters in the file exceeds the required count and mail has been sent for the same"
else
	echo "number of characters in a file is $number_of_char"
fi
