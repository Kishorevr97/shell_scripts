#!/bin/bash
echo "enter the choices"
read choice
case $choice in
	1)
		echo "enter the file containing data to find the word count"
		read data
		wordcount=`wc $data | awk -F " " '{print $1,$2,$3}'`
		echo "wordcount of the file is $wordcount"
		;;
	2)
		echo "enter the file containing data to find number of lines"
		read data1
		number_of_lines=`wc -l $data1 | awk -F " " '{print $1}'`
		if [ $number_of_lines -gt 5 ]
		then
		     echo "number of lines in a file exceeds the required line count" | mail -s "number of line exceeds" kishukish91@gmail.com
		     echo "number of lines in a file exceeds required line count, mail has been sent for the same"
		else
			echo "number of line in a file is $number_of_lines"
		fi
		;;
	*)
		echo "inavalid choice"
		;;
esac

		
