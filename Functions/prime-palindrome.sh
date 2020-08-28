#! /bin/bash
function prime() {
	number=$1
	count=0
	if [ $number -lt 2 ]
	then
		count=1
	fi
	for((i=2; i<number; i++))
	do
		if [ $(( number%i )) == 0 ]
		then
			count=1
		fi
	done
	if [ $count -eq 0 ]
	then
		echo "$number"
	else
		echo "0"
	fi
}
function palindrome() {
	temp=$1
	num=$1
	sum=0
	while [ $num -gt 0 ]
	do
		remainder=$(( $num%10 ))
		sum=$(( $sum*10+$remainder ))
		num=$(( $num/10 ))
	done
	echo $sum
}
read -p "Enter a number: " number
primeResult="$( prime $number )"
if [ $primeResult -ne "0" ]
then
	result="$( palindrome $number )"
	if [ $result -eq $number ]
	then
		echo "$number is palindrome and prime"
	else
		echo "$number is not palindrome"
	fi
else
	echo "$number is not prime"
fi
