#! /bin/bash

if [ $# -eq "0" ]; then
  list=`ls -A home`
  for dir in $list; do
    file_list=`$0 home/$dir`;
    for file in $file_list; do
      file_id=`ls -i $file | cut -f1 -d" "`;
      home_file=${file/home/$HOME}
      home_file_id=`ls -i $home_file |cut -f1 -d" "`;
      if [ $home_file_id !=  $file_id ]; then
        echo "###  Erreur sur $file, $file_id / $home_file_id"
        echo "Diff $file $home_file";
        diff $file $home_file;
        echo "";
        echo "Correct with :"
        echo "ln -Pf $home_file $file"
        echo ""
      fi
    done
  done
else
  res=""
  elm=$1
  if [ -f $elm ]; then
    echo $elm
  elif [ -d $elm ]; then
    for file in `ls -A $elm`; do
      echo `$0 "$elm/$file"`
    done
  fi
fi
