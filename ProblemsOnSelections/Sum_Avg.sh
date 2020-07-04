#!/bin/bash -x

read -p "enter 5 two digit numbers: " RN1 RN2 RN3 RN4 RN5

sum=$(($RN1+$RN2+$RN3+$RN4+$RN5))
avg=$(($sum / 5))

echo $sum
echo $avg
