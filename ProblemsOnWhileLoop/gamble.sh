
bal=100
bet=1
goal=0
won=0
nobet=0
minbal=0

while [ $minbal -lt $bal && $goal -lt 200 ]
do
	((nobet++))
	((bal--))
	bet=$(($RANDOM%2))
	if [ $bet -eq 1 ]
	then
		((won++))
		((goal++))
	else
		((minbal++))
fi
echo "$nobet times bet played"
echo "$won times won"
echo "amount won=$goal"
echo "balance : $bal"
done
