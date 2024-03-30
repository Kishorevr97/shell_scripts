#!/bin/bash
echo "Enter the choices"
read choice
case $choice in
	1)
		echo "enter the number to find factorial"
		read n
		factorial=1
		count=$n
		while [ $count -gt 0 ]
		do
        		factorial=`expr $factorial \* $count`
        		count=`expr $count - 1`
		done
		echo "factorial of $n is $factorial"
		;;
 	2)	
                echo "Enter the value of n to find the sum of the first n numbers:"
                read n
                sum=0
		for ((i=1;i<=$n;i++))
                do
                        sum=`expr $sum + $i`
                done
                echo "Sum of the first $n numbers is $sum"
                ;;
	*)
		echo "invalid choice"
		;;

esac	

