#!/bin/bash 
shopt -s extglob

read -p "Enter Your First Name (space) Last Name " firstName lastName;
read -p "Enter Email Id " emailId;
read -p "Enter Mobile Number +" mobNum;
read -p "Enter Password " password;

patFirstName="^[A-Z]{1}[A-Za-z]{2,}$"
patLastName="^[A-Z]{1}[A-Za-z]{2,}$"
patEmailId="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"
patMobNumber="^[0-9]{2,3}[ ]?[0-9]{10}$"
patPassword="(^[a-zA-Z][0-9]){7,}([A-Z][a-z][0-9])"

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

if [[ $emailId =~ $patEmailId ]]
then
        echo "Email Id Accepted"
else
        echo "Enter Valid Email Id"
fi

if [[ $mobNum =~ $patMobNumber ]]
then
        echo "Mobile Number Accepted"
else
        echo "Enter Valid Mobile Number"
fi

if [[ $password =~ $patPassword ]]
then
        echo "Password Accepted"
else
        echo "Enter Valid Password"
fi

