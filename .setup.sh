#!/bin/bash
for fichier in `ls`
do
  lien=$HOME/.$fichier;
  if [ -f $fichier ]
  then
    ln $fichier $lien;
  else
    cp -la $fichier $lien;
  fi
done
