#! /bin/bash
read -p "Enter a number: " number
count=0
if [ $number -lt 2 ]
then
	count=1
fi
for((i=2; i<number; i++))
do
	if [ $(( number%i )) == 0 ]
	then
		count=1
	fi
done
if [ $count -eq 0 ]
then
	echo "$number is prime"
else
	echo "$number is not prime"
fi
