#! /bin/bash
# @edt OriolGalvez
# Febrer 2021
#------------------------------------------
while read -r line
do
  grep "^$line:" /etc/passwd &> /dev/null
  if [ $? -eq 0 ]
  then
    echo $line
  else
    echo $line >> /dev/stderr
  fi
done
exit 0

