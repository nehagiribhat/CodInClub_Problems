#!/bin/bash
read -p "enter number: " num
for ((i=2; $((i*i))<=$num; i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		div=$((num/i))
		echo "factor=$div"
		echo "factor=$i"
	fi
done
