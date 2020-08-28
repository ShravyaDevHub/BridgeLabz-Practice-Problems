#! /bin/bash
standardFeet=3
standardMeters=1
lengthInFeet=60
breadthInFeet=40
lengthInMeters=$(( lengthInFeet*standardMeters/standardFeet ))
breadthInMeters=$(( breadthInFeet*standardMeters/standardFeet ))
echo "Plot dimensions in meters = $lengthInMeters meters x
$breadthInMeters meters"
