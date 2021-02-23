#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# Exemples while
# ------------------------------------------
#3 mostrar els arguments
while [ $# -gt 0 ]
do
	echo "$#: $*"
done	
exit 0
#2 mostrar de n a 0 countdown
num=$1
while [ $num -ge 0 ]
do
	echo $num
	((num--))
done
exit 0
#1 mostrar numeros del 1-10
num=1
while [ $num -le 10 ]
do
	echo $num
	((num++))
done	
exit 0
