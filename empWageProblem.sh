#!/bin/bash -x
#constants
WAGE_PER_HR=20
FULL_TIME=2
PART_TIME=1
WORKING_DAYS_PER_MONTH=20

attendance=$((RANDOM%3))

case $attendance in
	$FULL_TIME) workHour=10;;
	$PART_TIME) workHour=8;;
	*) workHour=0;;
esac
emp_wage_perday=$(($WAGE_PER_HR*$workHour))
emp_wage_permonth=$(($emp_wage_perday*$WORKING_DAYS_PER_MONTH))
echo "Employees per month pay is $emp_wage_permonth"
