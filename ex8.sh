#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------
ERR_NARGS=1
ERR_VALOR=2
if [ $# -lt 1 ]
then
            echo "Error: nª arguments incorrecte"
            echo "Usage: $0 nom usuari"
            exit $ERR_NARGS
fi
passwd=$(cat /etc/passwd)
for usuari in $*
do      
	user=$($passwd | cut -d: -f1)
	for line in $users
	do
		if [ line==$usuari ]
		then
			echo $usuari
		fi
	done		
done
exit 0

