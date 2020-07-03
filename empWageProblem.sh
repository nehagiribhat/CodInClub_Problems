#!/bin/bash -x
#constants
WAGE_PER_HR=20
FULL_TIME=2
PART_TIME=1

attendance=$((RANDOM%3))

if [[ $attendance -eq $FULL_TIME ]]
then
	workHour=10
elif [[ $attendance -eq $PART_TIME ]]
then
	workHour=8
else
	workHour=0
fi
emp_wage_perday=$(($WAGE_PER_HR*$workHour))
echo "Employees per day pay is $emp_wage_perday"
