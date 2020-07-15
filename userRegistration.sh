#!/bin/bash 
shopt -s extglob

read -p "Enter Your First Name " firstName

patFirstName="^[A-Z]{1}[A-Za-z]{2,}$"

if [[ $firstName =~ $patFirstName ]]
then
        echo "First Name Accepted"
else
        echo "Enter Valid First Name"
fi
