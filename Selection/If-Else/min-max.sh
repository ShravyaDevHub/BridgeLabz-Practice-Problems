#! /bin/bash
num1=$(( RANDOM%(900)+100 ))
num2=$(( RANDOM%(900)+100 ))
if [ $num1 -ge $num2 ]
then
	min=$num2
	max=$num1
else
	min=$num1
	max=$num2
fi
num3=$(( RANDOM%(900)+100 ))
if [ $min -ge $num3 ]
then
	min=$num3
elif [ $max -lt $num3 ]
then
	max=$num3
fi
num4=$(( RANDOM%(900)+100 ))
if [ $min -ge $num4 ]
then
	min=$num4
elif [ $max -lt $num4 ]
then
	max=$num4
fi
num5=$(( RANDOM%(900)+100 ))
if [ $min -ge $num5 ]
then
	min=$num5
elif [ $max -lt $num5 ]
then
	max=$num5
fi
echo "Min = $min, Max = $max"
