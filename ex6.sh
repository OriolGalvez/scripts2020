#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------
ERR_NARGS=1

if [ $# -lt 1 ]
then
            echo "Error: nª arguments incorrecte"
            echo "Usage: $0 dia setmana"
            exit $ERR_NARGS
fi
laborables=0
festius=0
for dia in $*
do
	case $dia in
		"dilluns"|"dimarts"|"dimecres"|"dijous"|"divendres")
			((laborables++));;
		"dissabte"|"diumenge")
			((festius++));;
		
	esac
done
echo "Hi ha $laborables dies laborables"
echo "Hi ha $festius dies festius"
exit 0

