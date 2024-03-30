#!/bin/bash
services="jenkins sshd"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "service $i is stopped" | mail -s "service status" kishukish91@gmail.com
	fi
done
