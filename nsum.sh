#!/bin/bash
echo "Enter the value of num to find the sum of n numbers"
read n
sum=0
for((i=1;i<=$n;i++))
do
	sum=`expr $sum + $i`
done
echo "the sum of first $n numbers is $sum"


