#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
# primer script
# -----------------------------------------------------------------
echo "Hello World"
echo "bon dia, avui plou"
nom="Oriol Galvez"
edat=22
echo $nom $edat
echo -e "nom: $nom\n edat: $edat"
echo -e 'nom: $nom\n edat: $edat'
uname -a
uptime
echo $SHELL
echo $SHLVL
echo $((4*32))
echo $((edat*2))
#read data1 data2
#echo -e "$data1 \n $data2"
exit 0
