#! /bin/bash
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
operation1=$(( a+b*c ))
opeartion2=$(( a%b+c ))
if [ $operation1 >= $operation2 ]
then
	min=$operation2
	max=$operation1
else
	min=$operation1
	max=$operation2
fi
operation3=$(( c+a/b ))
if [ $min >= $operation3 ]
then
	min=$operation3
elif [ $max < $num3 ]
then
	max=$operation3
fi
operation4=$(( a*b+c ))
if [ $min -ge $operation4 ]
then
	min=$operation4
elif [ $max -lt $operation4 ]
then
	max=$operation4
fi
echo "Min = $min, Max = $max"
