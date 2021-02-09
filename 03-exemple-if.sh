#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# Exemple if: indica si es major d'edat
#	$ prog edat
# ------------------------------------------
# 1) Validar arguments
if [ $# -ne 1 ]
then
    echo "Error: nª arguments incorrecte"
    echo "Usage: $0 edat"
    exit 1
fi
# xixa
edat=$1
if [ $1 -ge 18 ]
then
    echo "Edat $edat major d'edat"
fi
exit 0
