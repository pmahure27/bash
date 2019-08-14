#!/bin/bash

arr=(9 8 7 6 5 4 3 2 1 0)
printf "Array :"
echo ${arr[@]}

for (( i = 0; i < 10 ; i++ ))
do

	for (( j = 0 ; j < 10-1; j++))
	do

		if (( ${arr[j]} > ${arr[$(( j+1 ))]} ))
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi

	done

done

printf "Sorted Array : "

echo ${arr[@]}