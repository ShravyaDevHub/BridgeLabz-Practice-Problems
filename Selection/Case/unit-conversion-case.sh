#! /bin/bash
read -p "Enter length: " length
for((i=1; i<=4; i++))
do
	case "$i" in
		1) convertedLength=$(( length*12 ))
			echo "$length feet = $convertedLength inches"
			;;
		2) convertedLength=$(( length/3 ))
			echo "$length feet = $convertedLength meters"
			;;
		3) convertedLength=$(( length/12 ))
			echo "$length inches = $convertedLength feet"
			;;
		*) convertedLength=$(( length*3 ))
			echo "$length meters = $convertedLength feet"
			;;
	esac
done
