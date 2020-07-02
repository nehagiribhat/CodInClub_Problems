#!/bin/bash -x

attendance=$((RANDOM%3))

if [[ $attendance -ne 0 ]]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
