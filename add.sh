#!/bin/bash
if [[ $# != 1 ]]
then
  echo "Usage : $0 <nom_du_fichier>";
  exit 1;
fi
OLD_PWD=`pwd`
cd $HOME
cp -rl --parents $1 $OLD_PWD/home/
exit 0;
