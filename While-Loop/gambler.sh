#! /bin/bash
money=100
while [ $money -lt 200 ] && [ $money -gt 0 ]
do
	gamble=$(( RANDOM%2 ))
	if [ $gamble -eq 0 ]
	then
		(( money-- ))
	else
		(( money++ ))
	fi
done
if [ $money -eq 0 ]
then
	echo "Gambler is broke"
else
	echo "Gamble won Rs. 200"
fi
