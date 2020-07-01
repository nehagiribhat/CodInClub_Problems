#!/bin/bash
read -p "enter lower and upper limit of the range " low up
a=0
for ((i=low; i<=up; i++))
do
	quotient=$((i/10))
	remainder=$((i%10))
	if [ $quotient -eq $remainder ]
	then
		arr[$a]=$i
		((a++))
	fi
done
echo ${arr[@]}
