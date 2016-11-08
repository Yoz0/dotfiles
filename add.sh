#!/bin/bash
if [[ $# != 1 ]]
then
  echo "Usage : $0 <nom_du_fichier>";
  exit 1;
fi
cp -Lirl $HOME/$1 home/.
exit 0;
