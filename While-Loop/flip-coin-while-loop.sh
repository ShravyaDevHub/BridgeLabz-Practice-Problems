#! /bin/bash
headsWon=0
tailsWon=0
while [ $headsWon -ne 11 ] && [ $tailsWon -ne 11 ]
do
	flip=$(( RANDOM%2 ))
	if [ $flip -eq 1 ]
	then
		(( headsWon++ ))
	else
		(( tailsWon++ ))
	fi
done
if [ $headsWon -eq 11 ]
then
	echo "Heads won 11 times"
else
	echo "Tails won 11 times"
fi
