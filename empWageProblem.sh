#!/bin/bash -x
#constants
WAGE_PER_HR=20
FULL_TIME=2
PART_TIME=1
WORKING_DAYS_PER_MONTH=20
WORKING_HRS_PER_MONTH=100

#variables
total_working_days=0
total_working_hrs=0

#function
function getWorkingHrs(){
 	case $1 in
                $FULL_TIME) workHour=10;;
                $PART_TIME) workHour=8;;
                *) workHour=0;;
	esac
	echo $workHour
}

while [ $total_working_days -le $WORKING_DAYS_PER_MONTH ] && [ $total_working_hrs -le $WORKING_HRS_PER_MONTH ]
do
	((total_working_days++))
	workingHrs=$( getWorkingHrs $((RANDOM%3)) )
	total_working_hrs=$(($total_working_hrs+$workingHrs))
	dailyWages[$total_working_days]=$(($workingHrs*$WAGE_PER_HR))
done

emp_wage_permonth=$(($total_working_hrs*$WAGE_PER_HR))
echo "Employees per month pay is $emp_wage_permonth"
echo "Employees per day list: ${!dailyWages[@]}"
echo "Employees per day pay list: ${dailyWages[@]}"
