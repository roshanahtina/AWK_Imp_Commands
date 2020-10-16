#!/bin/bash
a=$1
b=$2
Arith=$3
echo

if [ "$a" -ne "$b" ]; then

	echo "$a is not equal to $b"
	echo "(arithmetic comparison)"
else
	echo "$a is equal to -  $b $Arith \"$Arith\""
	echo "Number Of Arguments Passed is \"$#\""
fi

echo 

if [ "$a" != "$b" ]
then
	echo "$a is not equal to $b."
	echo "(string comparison)"
else	
	echo "$a is equal to $b"
fi

echo 

exit 0
