awk '(FNR==1) { print "Fichier " , FILENAME }
{ printf("%5d : ", FNR) }
{ print }' text.txt
