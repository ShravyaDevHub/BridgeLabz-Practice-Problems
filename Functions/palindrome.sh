#! /bin/bash
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
result="$( palindrome $number )"
if [ $result -eq $number ]
then
	echo "$number is palindrome"
else
	echo "$number is not palindrome"
fi
