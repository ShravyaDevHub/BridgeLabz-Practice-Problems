#! /bin/bash
counter=0
read -p "Enter a number from 0 to 100: " num1
numbers[((counter++))]=$num1
read -p "Enter a number from 0 to 100: " num2
numbers[((counter++))]=$num2
read -p "Enter a number from 0 10 100: " num3
numbers[((counter++))]=$num3
for value in ${numbers[@]}
do
	quotient=$(( $value/10 ))
	remainder=$(( $value%10 ))
	if [ $quotient -eq $remainder ] && [ $value -ne 0 ]
	then
		doubleDigits[((counter++))]=$value
	fi
done
echo "Array of double digits: ${doubleDigits[@]}"
