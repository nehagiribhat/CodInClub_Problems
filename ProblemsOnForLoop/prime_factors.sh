#!/bin/bash -x
read -p "Enter lower and upper limit: " low up
for ((i=$low; i<=$up; i++))
do
for ((j=2; j<=$(($i/2)); j++))
do
if [ $(($i%$j)) -eq 0 ]
then
echo "$i is not a prime"
else
echo "$i is a prime"
fi
done
done
