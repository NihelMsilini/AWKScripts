#!/bin/bash
cat  /etc/passwd| grep /home > usersinfo.txt
echo "Afficher les users dont le UID >999"
awk 'BEGIN { FS=":"}
{if ($3>999) {
{ print "Enregistrement :" }
{ print $0 } 
 { print "Champs :" } 
 { print "identifiant  : " $1 }
 { print "mot de passe : " $2 }
 { print "UID          : " $3 }
 { print "GID          : " $4 }
 { print "commentaire  : " $5 }
 { print "rértoire   : " $6 }
{ print "shell        : " $7 }
}}' usersinfo.txt
