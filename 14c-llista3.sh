#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# Validar hi ha un argument.
# Si l'arhgument es un directori.
# Llistar-lo i dir si es regular file el de dins.
#------------------------------------------
ERR_NARGS=1
ERR_VALOR=2
# 1) Validar arguments
if [ $# -ne 1 ]
then
    echo "Error: nª arguments incorrecte"
    echo "Usage: $0 directori"
    exit $ERR_NARGS
fi
nom=$1
if  [ ! -d $nom ]
then
    echo "Error: $nom no es un directori"
    exit $ERR_VALOR
fi
for arg in $(ls $nom)
do
	if [ -h "$nom/$arg" ]
	then
		echo "$arg es un link"
	elif [ -f "$nom/$arg" ]
	then
		echo "$arg es un regular file"
	elif [ -d "$nom/$arg" ]
	then
		echo "$arg es un directori"
	else 
		echo "$arg es una altre cosa"
	fi
	((num++))
done
exit 0


