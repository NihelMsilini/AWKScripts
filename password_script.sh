awk ' BEGIN{print"test de labsence de mot de passe";FS=":"}  
NF==7  
{ #pour toutes les lignes contenant 7 champss  
  if ($2=="") # si le deuxiè champ est vide (correspond au mot de passe crypt))  
  { print $1 " na pas de mot de passe"} # on affiche le nom de lutilisateur ($1=login) qui na pas de mot de passe  
  else sinon  
  { print $1 " a un mot de passe"} # on affiche le nom de lutilisateur possént un mot de passe  
}  
END{print"C est fini"} ' /etc/passwd
