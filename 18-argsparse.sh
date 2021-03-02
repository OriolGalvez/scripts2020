#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#programa que procesa opcions amb valor i arguments
#prog [ -a file -b -c -d num -e ] arg[...]
#----------------------
arguments=""
options=""
file=""
num=""
while [ -n "$1" ]
do
	case $1 in
		-[bce])
			options="$options $1";;
		-a)
			file=$2
			shift;;
		-d)
			num=$2
			shift;;
		*)
			arguments="$arguments $1";;
	esac
	shift
done
echo "Opcions: $options"
echo "Arguments: $arguments"
echo "File: $file"
echo "Num: $num"
exit 0 
