#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------
ERR_NARGS=1
if [ $# -lt 1 ]
then
            echo "Error: nª arguments incorrecte"
            echo "Usage: $0 nom usuari"
            exit $ERR_NARGS
fi
for ususari in $*
do	
  grep "^$usuari:" /etc/passwd &> /dev/null
  if [ $? -eq 0 ]
  then
    echo $usuari
  else
    echo $usuari >> /dev/stderr
  fi	  
done
exit 0

