#! /bin/bash

if [ $# -lt 1 ]
then
	echo "usage: $0  filename " >&2
	exit 1
fi
count=1
cat $1 | while read line
do
	[ $count -eq 1 ] && echo "Processing file $1..." >  /dev/tty
	echo $count $line 
	count=`expr $count + 1`
done  > tmp$$
echo $count
mv tmp$$ tmp$$.log
