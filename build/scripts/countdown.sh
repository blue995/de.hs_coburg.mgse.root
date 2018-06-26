#!/bin/sh

TIMES=$1

for i in `seq $TIMES`;
do
	RESULT=$(expr $TIMES - $i + 1)
	echo "$RESULT"
	sleep 1
done
