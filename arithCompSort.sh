#!/bin/bash -x
read -p "Enter 3 input numbers: " a b c
echo "$a $b $c"

comp1=$((a+b*c))
comp2=$((a*b+c))
comp3=$((c+a/b))
comp4=$((a%b+c))
echo "1st Result=$comp1, 2nd Result=$comp2, 3rd Result=$comp3, 4th Result=$comp4"
