#! /bin/bash
read -p "Think of a number between 1 and 100: " n
guess=100
guess=$(( guess/2 ))
while [ $guess -ne $n ]
do
	read -p "Is the number greater than $guess? " range
	case $range in
		yes) guess=$(( (guess+(guess*2))/2 ))
			;;
		*) guess=$(( guess/2 ))
			;;
	esac
done
echo "Number is $guess"
