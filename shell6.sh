#!/bin/bash
echo "Enter the value of num1"
read num1
echo "Enter the value of num2"
read num2
sum=`expr $num1 + $num2`
product=`expr $num1 \* $num2`
division=`expr $num1 / $num2`
subtraction=`expr $num1 - $num2`
echo "The sum of $num1 and $num2 is $sum"
echo "The product of $num1 and $num2 is $product"
echo "The division of $num1 and $num2 is $division"
echo "The subtraction of $num1 and $num2 is $subtraction"
