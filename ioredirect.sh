#! /bin/bash

countx=0
for i in `seq 10`
do
	echo $i
	countx=`expr $countx + 1`
	echo $countx
done | sort -nr -u
echo countx $countx
