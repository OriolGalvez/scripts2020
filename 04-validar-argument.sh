#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# Validar argument:
#   $ prog arg1 arg2
# -------------------------------------
# 1) validar arguments
if ! [ $# -eq 2 ]
then     
  echo "Error: num arguments incorrecte"
  echo "Usage: $0 arg1 arg2"
  exit 1
fi
# 2) xixa
echo "Els arguments son $1 $2"
exit 0
