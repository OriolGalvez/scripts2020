#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------
for args in $*
do
	chars=$(echo $args | wc -m)
	if [ $chars -ge 4 ]
	then
		echo $args
	fi
done
exit 0
