#!/bin/bash
#Suche in $1 (liste von Dateien) nach suchbegriffen in file $2
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
lines=$(cat $1)
names=$(cat $2)
#echo "suche in $1 nach $names"
for line in $lines
do
for name in $names
	do
	echo $line | grep $name
	done
done
