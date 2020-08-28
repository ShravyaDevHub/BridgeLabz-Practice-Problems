#! /bin/bash
read -p "Enter month: " month
read -p "Enter day of month: " day
if [ $day -ge 1 ] && [ $day -le 31 ]
then
	if [ $month -eq 3 ] && [ $day -ge 20 ]
	then
		echo "True"
	elif [ $month -eq 4 ] && [ $day -le 30 ]
	then
		echo "True"
	elif [ $month -eq 5 ]
	then
		echo "True"
	elif [ $month -eq 6 ] && [ $day -lt 20 ]
	then
		echo "True"
	else
	echo "False"
	fi
else
	echo "False"
fi
