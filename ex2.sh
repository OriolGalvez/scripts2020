#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------

num=1
while [ -n "$1" ]
do
	echo "$num: $1"
	((num++))
	shift
done
exit 0
