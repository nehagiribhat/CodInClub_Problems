#!/bin/bash -x

read -p "enter inch" inch
feet=$(($inch / 12))
echo "$feet ft"

read -p "enter length then breadth" l b
l_in_meter=$(($l / 3))
b_in_meter=$(($b / 3))
echo "$l_in_meter"
echo "$b_in_meter"

Plots=25
Area=$(($l*$b))
echo "area of one plot is $Area"
Total_Area=$(($Area*Plots*2))
echo "approx $Total_Area*10^-5 acres"

