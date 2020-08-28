#! /bin/bash
standardFeet=43560
standardAcres=1
lengthInFeet=60
breadthInFeet=40
plotAreaInFeet=$(( lengthInFeet*breadthInFeet ))
totalPlots=25
totalAreaInFeet=$(( plotAreaInFeet*totalPlots ))
totalAreaInAcres=$(( totalAreaInFeet*standardAcres/standardFeet ))
echo "Area of 25 plots = $totalAreaInAcres acre"
