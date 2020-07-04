read -p "enter date then month: " date month

if [ $month -gt 03 -o $date -gt 20 ]
then
	if [ $month -le 06 -o $date -le 20 ]
	then
		echo "true"
	else
		echo "false"
	fi
fi
