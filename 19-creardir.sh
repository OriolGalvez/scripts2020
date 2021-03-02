#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# Validar existeix 1 o més arguments
# Per tot directori sha de crear
# si es pot crear mostra que es por crear
# si no es pot crear stderr
# mkdir no ha de generar sortida
# prog noudir[...]
#----------------------
ERR_NARGS=1
ERR_CREAR=2
status=0
if [ $# -lt 1 ]
then
    echo "Error: nª arguments incorrecte"
    echo "Usage: $0 noudir[...] "
    exit $ERR_NARGS
fi
for dir in $*
do
	mkdir -p $dir &> /dev/null
	if [ $? -eq 0 ]
	then
        	echo $dir
	else
        	echo "Error en crear $dir" >>/dev/stderr
		status=2
	fi
done
exit $status
