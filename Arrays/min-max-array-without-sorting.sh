#! /bin/bash
temp=0
while [ $temp -le 9 ]
do
	num=$(( RANDOM%(900)+100 ))
	if [ $temp -eq 0 ]
	then
		lowest=$num
		secondLowest=$num
		highest=$num
		secondHighest=$sum
	elif [ $temp -eq 1 ]
	then
		if [ $lowest -gt $num ]
		then
			secondLowest=$lowest
			lowest=$num
			highest=$secondLowest
			secondHighest=$num
		else
			highest=$num
			secondLowest=$num
		fi
	else
		if [ $lowest -gt $num ]
		then
			secondLowest=$lowest
			lowest=$num
		elif [ $secondLowest -gt $num ]
		then
			secondLowest=$num
		elif [ $highest -lt $num ]
		then
			secondHighest=$highest
			highest=$num
		elif [ $secondHighest -lt $num ]
		then
			secondHighest=$num
		fi
	fi
	numbers[$temp]=$num
	(( temp++ ))
done
echo "Array: ${numbers[@]}"
echo "Second lowest = $secondLowest"
echo "Second Highest = $secondHighest"
