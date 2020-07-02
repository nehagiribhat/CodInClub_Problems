
num=0
read -p "enter number " num;

POT=1
i=0
while [ $i -le $num ]
do
	if [ $POT -le 256 ]
	then
		echo "$i and $POT"
		((POT = 2*POT))
	else
		break
	fi
	((i++))
done
