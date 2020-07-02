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
                        return 0
                fi
                        num=$((($num%$div)/10))
                        div=$(($div/100))
        done
return 1
}
function Prime(){
num=$1
temp=0
for (( counter=2; counter<=$(($num/2)); counter++ ))
do
	temp=$(($num % $counter))
	if [ $temp ==0 ]
	then
		return 0
		break
	fi
done
return 1
}
read -p "enter number " prime
if [ $prime -gt 9 ]
then
	Palindrome $Prime
	result1=$?
	Prime $Prime
	result2=$?
	for [ $result1=1 ]
	do
		if [ $result2 == 0 ]
		echo "Palindrome Number is not Prime"
		elif [ $result2 == 1 ]
		echo "Palindrome Number is Prime"
	else
	fi
	echo "Number is not Palindrome"
	done
fi
