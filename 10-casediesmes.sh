#! /bin/bash
# @edt OriolGalvez
#Dies del mes
#---------------------------------------------------------------
ERR_NARGS=1
ERR_VALOR=2
# 1) Validar arguments
if [ $# -ne 1 ]
then
	    echo "Error: nª arguments incorrecte"
	    echo "Usage: $0 numero de mes"
	    exit $ERR_NARGS
fi
mes=$1
if ! [ $mes -ge 1 -a $mes -le 12 ]
then 	
    echo "Error: $mes no es un valor entre 1-12"
    echo "Usage: $0 numero de mes"
    exit $ERR_VALOR
fi
case $mes in
    "2")
            echo "el mes $mes te 28 dies";;
    "1"|"3"|"5"|"7"|"8"|"10"|"12")
          echo "el mes $mes te 31 dies";;
  *)
          echo "el mes $mes te 30 dies";;
esac
exit 0


