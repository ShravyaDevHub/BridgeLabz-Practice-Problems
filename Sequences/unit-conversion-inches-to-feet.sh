#! /bin/bash
standardFeet=1
standardInch=12
givenInch=42
feet=$(( givenInch*standardFeet/standardInch ))
echo "42in = "$feet"ft"
