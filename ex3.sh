#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------
ERR_NARGS=1
if [ $# -ne 1 ]
then
    echo "Error: nª arguments incorrecte"
    echo "Usage: $0 num"
    exit $ERR_NARGS
fi
cont=0
while [ $cont -le $1 ]
do
	echo $cont
	((cont++))
done
exit 0
