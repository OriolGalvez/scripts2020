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
if [ $# -lt 1 ]
then
    echo "Error: nª arguments incorrecte"
    echo "Usage: $0 directori"
    exit $ERR_NARGS
fi
for mydir in $*
do
	if  [ ! -d $mydir ]
	then
    		echo "Error: $mydir no es un directori" >> /dev/stderr
    		
	
	else
		for arg in $(ls $mydir)
		do
			if [ -h "$mydir/$arg" ]
			then
				echo -e "\t $arg es un link"
			elif [ -f "$mydir/$arg" ]
			then
				echo -e "\t $arg es un regular file"
			elif [ -d "$mydir/$arg" ]
			then
				echo -e "\t $arg es un directori"
			else 
				echo -e "\t $arg es una altre cosa"
			fi
		done
	fi
done
exit 0


