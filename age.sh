#!/bn/bash

echo "enter the file containing a data"
read data
sed -i '1d' "$data"
while read line
do
	age=`echo "$line" | awk -F " " '{print $3}'`
	if [ "$age" -gt 40 ]
	then
		echo "$line" | awk -F " " '{print $2}'
	fi
done < "$data"
