read -p "enter 3 numbers: " a b c

p=$(($a+$b*$c))
q=$(($a%$b+$c))
r=$(($c+$a/$b))
s=$(($a*$b+$c))

echo "p=$p q=$q r=$r s=$s"

if [ $p -le $q -o $p -le $r -o $p -le $s ]
then
	echo "Min=$p"
elif [ $q -le $p -o  $q -le $r -o $q -le $s ]
then
	echo "Min=$q"
elif [ $r -le $p -o  $r -le $q -o $r -le $s ]
then
	echo "Min=$r"
elif [ $s -le $p -o  $s -le $q -o $s -le $r ]
then
	echo "Min=$s"
fi

if [ $p -gt $q -o $p -gt $r -o $p -gt $s ]
then
        echo "Mar=$p"
elif [ $q -gt $p -o  $q -gt $r -o $q -gt $s ]
then
        echo "Mar=$q"
elif [ $r -gt $p -o  $r -gt $q -o $r -gt $s ]
then
        echo "Mar=$r"
elif [ $s -gt $p -o  $s -gt $q -o $s -gt $r ]
then
        echo "Mar=$s"
fi
