#! /bin/bash
read -p "Enter the value of n " n
for((i=1; i<=n; i++))
do
	if [ $i -eq 1 ]
	then
		denominator=1
		numerator=1
	else
		numerator=$(( ($i*$numerator)+$denominator ))
		denominator=$(( $denominator*$i ))
	fi
done
echo "H($n) = $numerator/$denominator"
