#! /bin/bash
function convertToDegC() {
	degC=$(( ($1-32)*5/9 ))
	echo $degC
}
function convertToDegF() {
	degF=$(( $1*9/5+32 ))
	echo $degF
}
read -p "Enter degree: " degree
read -p "Convert to degC or degF? " conversion
case $conversion in
	degC) if [ $degree -ge 32 ] && [ $degree -le 212 ]
			then
				result="$( convertToDegC $degree )"
				echo $degree"F = "$result"C"
			fi
			;;
	degF) if [ $degree -ge 0 ] && [ $degree -le 100 ]
			then
				result="$( convertToDegF $degree )"
				echo $degree"C = "$result"F"
			fi
			;;
esac
