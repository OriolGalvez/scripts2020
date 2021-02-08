#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# Exemple if
#	$ prog edat
# ------------------------------------------
if [ $# -ne 1 ];
	echo "Error: nª arguments incorrecte"
	echo "Usage: $0 edat"
	exit 1
fi

echo $1
exit 0
