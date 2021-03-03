#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------
ERR_NARGS=1
if [ $# -ne 1 ]
then
            echo "Error: nª arguments incorrecte"
            echo "Usage: $0 numero"
            exit $ERR_NARGS
fi
cont=1
max=$1
while read -r line
do
  if [ $cont -le $max ]
  then
    echo "$cont: $line"
  fi
  if [ $cont -eq 5 ]
  then
	exit 0
  fi
  ((cont++))
done
exit 0
