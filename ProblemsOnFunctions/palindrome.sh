
function palindrome(){
	div=1
	num=$1
	while [ $(($num/$div)) -ge 10 ]
	do
		div=$(($div*10))
	done
	while [ $num -ne 0 ]
	do
		lead=$(($num/$div))
		trail=$(($num%10))
		if [ $lead != $trail ]
		then
			echo "Not Palindrome"
		else
			num=$((($num%$div)/10))
			div=$(($div/100))
	done
echo "Palindrome"
