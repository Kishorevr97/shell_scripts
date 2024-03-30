#!/bin/bash
echo "enter the day in shortform"
read day
case $day in
	"Mon")
		mkdir -p temp
		;;
	"Tue")
		touch temp/test.txt
		;;
	"Wed")
		echo "hello" > temp/test.txt
		;;
	"Thu")
		cp /home/ubuntu/temp/test.txt /home/ubuntu
		;;
	"Fri")
		rm -rf /home/ubuntu/test.txt
		;;
	"Sat" | "Sun")
		echo "holiday"
		;;
	esac
