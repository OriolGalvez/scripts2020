#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# Validar hi ha un argument.
# Si l'arhgument es un directori. Si no es directori error.
# Llistarlo
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
nom=$1
if  [ ! $nom -d ] 
then
    echo "Error: $nom no es un directori"
    exit $ERR_VALOR
fi
ls $nom
exit 0

