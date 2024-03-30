#!/bin/bash
echo "enter the number to get factorial"
read n
factorial=1
count=$n
while [ $count -gt 0 ]
do
	factorial=`expr $factorial \* $count`
	count=`expr $count - 1`
done
echo "the factorial of $n is $factorial"

