awk ' BEGIN { print "Voici toutes les lignes qui contiennent la chaine 40" }
/40/ { print FILENAME , FNR , $0 }' text.txt
