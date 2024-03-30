#!/bin/bash
services="jenkins sshd kishore"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "services for $i stopped" | mail -s "services" kishukish91@gmail.com
	fi
done
