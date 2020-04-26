#!/bin/bash

# Enter the Char you want to print AND count how much you want to

set -e

char=$1
count=$2

for (( i=0; i=$count; i++ ))
do
echo "This is My Charector :: $char...!"
done
