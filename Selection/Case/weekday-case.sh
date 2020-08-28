#! /bin/bash
num=$(( RANDOM%7+1 ))
case "$num" in
	1) day="Sunday"
		;;
	2) day="Monday"
		;;
	3) day="Tuesday"
		;;
	4) day="Wednesday"
		;;
	5) day="Thursday"
		;;
	6) day="Friday"
		;;
	*) day="Saturday"
		;;
esac
echo $day
