#! /bin/bash
counter=0
read -p "Enter a number: " number
for((i=1; i<=number; i++))
do
	if [ $(( number%i )) == 0 ]
	then
		count=0
		if [ $i -lt 2 ]
		then
			count=1
		fi
		for((x=2; x<i; x++))
		do
			if [ $(( i%x )) == 0 ]
			then
				count=1
			fi
		done
		if [ $count -eq 0 ]
		then
			primeFactors[((counter++))]=$i
		fi
	fi
done
echo "Prime factors of $number are ${primeFactors[@]}"
