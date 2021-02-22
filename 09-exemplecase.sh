#! /bin/bash
# @edt OriolGalvez
#Exemple case
#---------------------------------------------------------------

case $1 in 
  "dl"|"dt"|"dc"|"dj"|"dv")
	  echo "es laborable";;
  "ds"|"dm")
	  echo "es festiu";;
  *)
	  echo "es un altre cosa"
esac
exit 0
#exemple 2
case $1 in
  [aeiou])
	  echo "es una vocal";;
  [bcdfghjklmnpqrstvwxyz])
	  echo "es una consonant";;
  *)
	  echo "es una altre cosa";;
esac

exit 0
#exemple 1
case $1 in 
  "pere"|"pau"|"joan")
      echo "es un nen";;
  "marta"|"ana"|"julia")
      echo "es una nena";;
  *)
      echo "indefinit";;
esac
exit 0
