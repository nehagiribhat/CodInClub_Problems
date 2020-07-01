
arr[0]=-9
arr[1]=-2
arr[2]=5
arr[3]=-3
arr[4]=4

length=${#arr[@]}
for (( i=o; i<$length; i++ ))
do
	for (( j=$(($i+1)); j<$length; j++ ))
	do
		for (( k=$(($k+1)); k<$length; k++ ))
		do
		sum=$((-1*${arr[i]}))
		sum1=$((${arr[j]}+${arr[k]}))
		if [ $sum -eq $sum1 ]
		then
		echo "${arr[i]} ${arr[j]} ${arr[k]}"
		else
		echo "No pairs found"
		fi
		done
	done
done
