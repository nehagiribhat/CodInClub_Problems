#!/bin/bash

count=0
declare -A bday
while [ $count -lt 50 ]
do
	month=$(($((RANDOM%12))+1))
	bday[$count]=$month
	count=$(($count+1))
done
for (( i=1; i<=12; i++ ))
do
	while [ $count -lt 50 ]
	do
		if [ ${bday[$count]} -eq $i ]
		then
			echo "Person number $count"
		else
			echo "No person found"
		fi
		count=$(($count+1))
	done
done
echo "person number = ${!bday[@]}"
echo "        month = ${bday[@]}"

