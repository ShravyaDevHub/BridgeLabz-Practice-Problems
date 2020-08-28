#! /bin/bash
read -p "Enter year: " year
if [ $(( $year%4 )) -eq 0 ]
then
	if [ $(( $year%100 )) -eq 0 ]
	then
		if [ $(( $year%400 )) -eq 0 ]
		then
			leapYear=true
		else
			leapYear=false
		fi
	else
		leapYear=true
	fi
else
	leapYear=false
fi
if [ $leapYear = true ]
then
	echo "$year is a leap year"
else
	echo "$year is not a leap year"
fi
