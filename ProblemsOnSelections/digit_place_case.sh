#!/bin/bash -x
read -p "enter series " series
case $series in
	1) echo "One";;
	10) echo "Ten";;
	100) echo "Hundred";;
	1000) echo "Thousand";;
	10000) echo "Ten Thousand";;
	100000) echo "Lakh";;
	1000000) echo "Ten Lakh";;
	10000000) echo "Crore";;
	*) echo "Invalid input";;
esac

