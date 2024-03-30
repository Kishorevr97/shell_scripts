#!/bin/bash
echo "enter the file containing data"
read data
line_num=1
while read line
do 
	wordcount=`echo "$line" | wc -w`
	echo "number of words in line $line_num is $wordcount"
	line_num=`expr $line_num + 1`
done < "$data"
