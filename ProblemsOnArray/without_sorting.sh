#!/bin/bash -x

for (( i=0; i<10; i++ ))
do
        series[$i]=$((RANDOM%900+100))
        echo ${series[@]}
done
least=${series[0]}
highest=${series[0]}
for (( i=0; i<10; i++ ))
do
        if [ ${series[$i]} -lt $least ]
        then
                least=${series[$i]}
        fi
        if [ ${series[$i]} -gt $highest ]
        then
                highest=${series[$i]}
        fi
done
sec_least=${series[0]}
sec_highest=${series[0]}
for (( i=0; i<10; i++ ))
do
        if [ ${series[$i]} -lt $sec_least -a ${series[$i]} -ne $least ]
        then
                sec_least=${series[$i]}
        fi

        if  [ ${series[$i]} -gt $sec_highest -a ${series[$i]} -ne $highest ]
        then
                sec_highest=${series[$i]}
        fi
done
echo "Second smallest = $sec_least"
echo "Second largest = $sec_highest"
