#! /bin/bash
read -p "Enter a number: " n
power=1
i=1
while [ $power -lt 256 ]
do
	if [ $i -le $n ]
	then
		power=$(( power*2 ))
		echo "2^$i = $power"
	else
		break
	fi
	(( i++ ))
done
