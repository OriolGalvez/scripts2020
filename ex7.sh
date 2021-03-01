#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------
while read -r line
do
	chars=$(echo $line | wc -m)
        if [ $chars -gt 60 ]
	then
		echo $line
	fi
done
exit 0

