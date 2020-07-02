#!/bin/bash
declare -A dice
dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0

rolling=0

declare -A roll
while [ ${dice[1]} -ne 10 ] && [ ${dice[2]} -ne 10 ] && [ ${dice[3]} -ne 10 ] && [ ${dice[4]} -ne 10 ] && [ ${dice[5]} -ne 10 ] && [ ${dice[6]} -ne 10 ]
do
	((rolling++))
	roll[$rolling]=$((RANDOM%6+1))
	case ${roll[$rolling]} in
		 1) dice[1]=$((${dice[1]}+1));;
		 2) dice[2]=$((${dice[2]}+1));;
		 3) dice[3]=$((${dice[3]}+1));;
		 4) dice[4]=$((${dice[4]}+1));;
		 5) dice[5]=$((${dice[5]}+1));;
		 6) dice[6]=$((${dice[6]}+1));;
	esac
done
echo ${!dice[@]}
echo ${dice[@]}
for ((i=1; i<=6; i++))
do
	for((j=$(($i+1)); j<=6; j++))
	do
		if [ ${dice[$i]} -gt ${dice[$j]} ]
		then
			var=${dice[$i]}
			dice[$i]=${dice[$j]}
			dice[$j]=$var
		fi
	done
done
echo ${dice[@]}
echo "min=${dice[1]}"
echo "max=${dice[6]}"



