#!/bin/bash

# Enter the Char you want to print AND count how much you want to

set -e

char=$1
count=$2

forloopfunc()
{
for (( i=0; i<=$count; i++ ))
do
echo "This is My Charector - $char..."
done
exit
}

printequel()
{
start=1
end=25
for (( i=$start; i<=$end; i++ ))
do 
echo -n =
done
exit
}

#Calling the function to print the char
echo -e "This is the function using repeatedly print a char\nAnd below are the result"
printequel
forloopfunc
printequel
