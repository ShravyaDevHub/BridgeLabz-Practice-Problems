#! /bin/bash
temp=0
while [ $temp -le 9 ]
do
	numbers[$temp]=$(( RANDOM%(900)+100 ))
	(( temp++ ))
done
IFS=$'\n' sorted=($(sort <<<"${numbers[*]}"))
unset IFS
secondLowest=${sorted[1]}
secondHighest=${sorted[8]}
echo "Array: ${numbers[@]}"
echo "Sorted array: ${sorted[@]}"
echo "Second lowest = $secondLowest"
echo "Second Highest = $secondHighest"
