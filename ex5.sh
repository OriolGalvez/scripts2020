#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------
while read -r line
do
	echo $line | cut -c 1-50   
done
exit 0
