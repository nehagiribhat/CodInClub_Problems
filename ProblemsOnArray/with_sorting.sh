#!/bin/bash -x

for ((i=0;i<10;i++))
do
        num[$i]=$(($RANDOM%900+100))
done
echo ${num[@]}
var=0
for((i=0; i<10; i++))
do
        for((j=$(($i+1)); j<10; j++))
do
    	    if [[ ${num[$i]} -gt ${num[$j]} ]]
        	then
                	var=${num[$i]}
                	num[$i]=${num[$j]}
                	num[$j]=$var
        	fi
	done
done
echo "second lowest = ${num[1]}"
echo "second largest = ${num[8]}"
