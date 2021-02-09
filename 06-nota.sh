#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# Indicar nota: aprovat, suspes
#       validar Earg, Validar [0-10]
#       $ prog nota
# ------------------------------------------
ERR_NARGS=1
ERR_VALOR=2
# 1) Validar arguments
if [ $# -ne 1 ]
then
    echo "Error: nª arguments incorrecte"
    echo "Usage: $0 nota"
    exit $ERR_NARGS
fi
nota=$1
if ! [ $nota -ge 0 -a $nota -le 10  ]
then
    echo "Error: nota no valida"
    echo "Usage: $0 nota [0-10]"
    exit $ERR_VALOR
fi

if [ $nota -lt 5 ]
then
    echo "Suspes"
elif [ $nota -lt 7 ]
then 
    echo "Aprovat"
elif [ $nota -lt 9 ]
then
    echo "Notable"
else 
    echo "Excelent"
fi    
exit 0
