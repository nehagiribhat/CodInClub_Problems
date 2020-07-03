#!/bin/bash -x
#constants
WAGE_PER_HR=20
FULL_TIME=2
PART_TIME=1

attendance=$((RANDOM%3))

case $attendance in
	$FULL_TIME) workHour=10;;
	$PART_TIME) workHour=8;;
	*) workHour=0;;
esac
emp_wage_perday=$(($WAGE_PER_HR*$workHour))
echo "Employees per day pay is $emp_wage_perday"
