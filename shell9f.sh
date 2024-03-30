#!/bin/bash

echo "Enter the number to find factorial n"
read n
factorial=1
count=$n
while [ $n -gt 0 ]
do
        factorial=`expr $factorial \* $n`
        n=`expr $n - 1`
done
echo "Factorial of $count is $factorial"


