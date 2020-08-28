#! /bin/bash
counter=0
read -p "Enter first integer: " int1
integers[((counter++))]=$int1
read -p "Enter second integer: " int2
integers[((counter++))]=$int2
read -p "Enter third integer: " int3
integers[((counter++))]=$int3
sum=$(( ${integers[0]}+${integers[1]}+${integers[2]}))
if [ $sum -eq 0 ]
then
	echo "${integers[0]} + ${integers[1]} + ${integers[2]} = $sum"
else
	echo "The sum of the integers is not equal to zero."
fi
