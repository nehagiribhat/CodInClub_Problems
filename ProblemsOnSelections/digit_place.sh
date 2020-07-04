#!/bin/bash -x
read -p "enter value in series 1,10,100,etc" series

if [ $series -eq 1 ]
then
	echo "One"
elif [ $series -eq 10 ]
then
        echo "Ten"
elif [ $series -eq 1 ]
then
        echo "Hundred"
elif [ $series -eq 1 ]
then
        echo "Thousand"
elif [ $series -eq 1 ]
then
        echo "Ten Thousand"
elif [ $series -eq 1 ]
then
        echo "Lakh"
elif [ $series -eq 1 ]
then
        echo "Ten Lakh"
elif [ $series -eq 1 ]
then
        echo "Crore"
else
	echo "Invalid Input"
fi

