#! /bin/bash
declare -A months
months[Jan]=0
months[Feb]=0
months[Mar]=0
months[Apr]=0
months[May]=0
months[Jun]=0
months[Jul]=0
months[Aug]=0
months[Sep]=0
months[Oct]=0
months[Nov]=0
months[Dec]=0
for((i=1; i<=50; i++))
do
	birthMonth=$(( RANDOM%12+1 ))
	case "$birthMonth" in
		1) value=${months[Jan]}
			(( value++ ))
			months[Jan]=$value
			;;
		2) value=${months[Feb]}
			(( value++ ))
			months[Feb]=$value
			;;
		3) value=${months[Mar]}
			(( value++ ))
			months[Mar]=$value
			;;
		4) value=${months[Apr]}
			(( value++ ))
			months[Apr]=$value
			;;
		5) value=${months[May]}
			(( value++ ))
			months[May]=$value
			;;
		6) value=${months[Jun]}
			(( value++ ))
			months[Jun]=$value
			;;
		7) value=${months[Jul]}
			(( value++ ))
			months[Jul]=$value
			;;
		8) value=${months[Aug]}
			(( value++ ))
			months[Aug]=$value
			;;
		9) value=${months[Sep]}
			(( value++ ))
			months[Sep]=$value
			;;
		10) value=${months[Oct]}
			(( value++ ))
			months[Oct]=$value
			;;
		11) value=${months[Nov]}
			(( value++ ))
			months[Nov]=$value
			;;
		*) value=${months[Dec]}
			(( value++ ))
			months[Dec]=$value
			;;
	esac
done
for m in "${!months[@]}"
do
	echo "Individuals with birthday in $m = ${months[$m]}"
done
