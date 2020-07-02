#!/bin/bash -x
#constants
WAGE_PER_HR=20

attendance=$((RANDOM%3))

if [[ $attendance -eq 2 ]]
then
	workHour=8
else
	workHour=0
fi
emp_wage_perday=$(($WAGE_PER_HR*$workHour))
echo "Employees per day pay is $emp_wage_perday"
