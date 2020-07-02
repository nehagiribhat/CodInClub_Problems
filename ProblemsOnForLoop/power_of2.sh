num=0
read -p "enter number " num;

POT=1i=0
for [ $i -le $num ]
do
	echo "$i and $POT"
	((POT = 2*POT))
	((i++))
done
