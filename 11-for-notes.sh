#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# prog notes[...]
# validar que rep un o mes arguments
# per cada nota validar [0-10]
# procesar cada nota i indicar si suspes aprovat notable o excelent
# ------------------------------------------

ERR_NARGS=1
ERR_VALOR=2
if [ $# -lt 1 ]
then
    echo "Error: nª arguments incorrecte"
    echo "Usage: $0 nota[...]"
    exit $ERR_NARGS
fi

for nota in $*
do
	if ! [ $nota -ge 0 -a $nota -le 10  ]
	then
    		echo "Error: nota $nota no valida [0-10]" >> /dev/stderr

	elif [ $nota -lt 5 ]
	then
    		valor="Suspes"
	elif [ $nota -lt 7 ]
	then
    		valor="Aprovat"
	elif [ $nota -lt 9 ]
	then
    		valor="Notable"
	else
    		valor="Excelent"
	fi

        echo "Nota: $nota esta $valor"
   
done
exit 0
