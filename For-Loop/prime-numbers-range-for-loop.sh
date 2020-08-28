#! /bin/bash
read -p "Enter first number of range: " firstNumber
read -p "Enter last number of range: " lastNumber
for((x=firstNumber; x<=lastNumber; x++))
do
	count=0
	if [ $x -lt 2 ]
	then
		count=1
	fi
	for((i=2; i<x; i++))
	do
		if [ $(( x%i )) == 0 ]
		then
			count=1
		fi
	done
	if [ $count -eq 0 ]
	then
		echo "Prime Number: $x"
	fi
done
