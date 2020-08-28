#! /bin/bash
num=10
case "$num" in
	1) number="Unit"
		;;
	10) number="Ten"
		;;
	100) number="Hundred"
		;;
	1000) number="Thousand"
		;;
	10000) number="Ten thousand"
		;;
	*) number="Lakh"
		;;
esac
echo $number
