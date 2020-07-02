count=0
while [ $count -le 11 ]
do
	flip=$(($RANDOM%2))
	if [ $flip -eq 1 ]
	then
		echo "Heads"
	else
		echo "Tails"
count=$((count + 1))
done
