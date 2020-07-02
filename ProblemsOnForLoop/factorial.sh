read -p "enter number " num;

fac=1
for ((i=2 ; i<=num ; i++))
do
	fac=$(($fac*$i))
done
echo "factorial=$fac"
