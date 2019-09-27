#!/bin/bash

echo "Enter how many Fib no."
read FIB_NO

rm -f fiblist.txt
prev=0
curr=1

i=0

while [[ $i -lt FIB_NO ]]
do
	fib=$(( $prev + $curr ))
	printf "$fib " >> fiblist.txt
	prev=$curr
	curr=$fib
	i=$(( $i + 1 ))
done

cat fiblist.txt
