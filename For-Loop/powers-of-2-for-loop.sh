#! /bin/bash
read -p "Enter the power: " power
answer=1
for((i=1; i<=power; i++))
do
	answer=$((answer*2))
	echo "2^$i = $answer"
done
