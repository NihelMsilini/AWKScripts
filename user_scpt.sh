head -1 /etc/passwd >> rootinfo.txt
awk 'BEGIN { FS=":"}

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
' rootinfo.txt
