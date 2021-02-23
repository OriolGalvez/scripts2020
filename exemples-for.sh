#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# Exemples for
# ------------------------------------------


#6 llistar numerats tots els logins
llista_logins=$(cut -d: -f1 /etc/passwd)
num=1
for elem in $llista_logins
do
	echo "$num: $elem"
	((num++))
done
exit 0

#5 llistat de noms del directori actiu numerat linia a linia
llista_noms=$(ls)
num=1
for elem in $llista_noms
do
        echo "$num: $elem"
	((num++))
done
exit 0


#4 llistar els arguments numerats
pos=1
for arg in $*
do
        echo "$pos: $arg"
	pos=$((pos+1))
done
exit 0



#3 iterar per la llista de noms de fitxers que genera ls
llista_noms=$(ls)
for elem in $llista_noms
do
        echo $elem
done
exit 0



#2b amb "$@"
for arg in "$@"   #s'expandeix igualment (segueix genrant una llista separada d'arguments
do
        echo $arg
done
exit 0


#2b
for arg in $@  
do
        echo $arg
done
exit 0


#2a 
for arg in "$*" #aixi nomes itera un cop pero amb tots els arguments en un string
do
        echo $arg
done
exit 0


#2 iterar per cada argument rebut
for arg in $*
do
        echo $arg
done
exit 0

#1b iterar una llista de noms
for nom in pere marta anna ramon
do
        echo $nom
done
exit 0

#1 iterar una llista de noms
for nom in "pere" "marta" "anna" "ramon"
do
	echo $nom
done
exit 0
