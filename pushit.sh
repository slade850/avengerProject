#!/bin/bash

if [ $1 = n ]
   then
       git init
       git add .
       read -r -p "entrer l'addresse de remote:" reponse
       git remote add origin $reponse
       git commit -m "frist commit"
       git push -u origin master
  elif [ $1 = p ]
    then
        git add .
        read -r -p "entrer un commentaire" reponse
        git commit -m "$reponse"
        git push -u origin master
    else
       echo "entrer n pour un nouveau depot git ou p pour un depot existant"
    fi   
