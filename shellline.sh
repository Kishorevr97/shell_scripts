#!/bin/bash
echo "Enter the file path"
read filepath
linenum=1
while read line
do
	wordcount=$(echo "$line" | wc -w)
	echo "Line $linenum contains $wordcount number of words"
	linenum=`expr $linenum + 1`
done < "$filepath"
