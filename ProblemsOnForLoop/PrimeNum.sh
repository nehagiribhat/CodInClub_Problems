echo "enter a number"
read num
for ((i=2 ; i<=num/2 ; i++))
do
	if [ $((num%i)) -eq 0 ]
	then
		echo "$num is not a prime"
	else
		echo "$num is a prime"
	fi
done
