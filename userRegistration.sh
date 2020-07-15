#!/bin/bash 
shopt -s extglob

read -p "Enter Your First Name (space) Last Name " firstName lastName

patFirstName="^[A-Z]{1}[A-Za-z]{2,}$"
patLastName="^[A-Z]{1}[A-Za-z]{2,}$"

if [[ $firstName =~ $patFirstName ]]
then
        echo "First Name Accepted"
else
        echo "Enter Valid First Name"
fi

if [[ $lastName =~ $patLastName ]]
then
        echo "Last Name Accepted"
else
        echo "Enter Valid Last Name"
fi
