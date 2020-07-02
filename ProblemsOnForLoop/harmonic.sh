read -p "enter number " num

function harmonic() {
	sum 0.0
	for ((i=1; i<=num; i++))
	do
		div='echo 1 $i | awk '{num1=$1;num2=$2; primt num1/num2}''
		sum='echo $sum $div | awk '{num1=$1;num2=$2; primt num1/num2}''
	done
	echo $sum
}
harnum=$( harmonic $num)
echo $harnum
