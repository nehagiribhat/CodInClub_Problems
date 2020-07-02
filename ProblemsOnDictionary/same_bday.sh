#!/bin/bash
read -p "input year: " year
declare -A Month
declare -A SameBday

for ((i=1; i<=50; i++))
do
	if [ $year=92 -o $year=93 ]
	then
		month=$(((($RANDOM%12))+1))
		Month[$i]=$month
	else
		echo "enter correct year"
	fi
	for ((j=$(($i+1)); j<=50; j++))
	do
		if [ ${Month[$i]}==${Month[$j]} ]
		then
			SameBday[$i]=$i
		else
			echo "No same birth month found"
		fi
	done
done
echo "${Month[@]}"
echo "${!SameBday[@]}"
echo "${SameBday[@]}"
