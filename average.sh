awk '{  print $1
               printf(" moyenne %5.2f\n",($2+$3)/2 )
           } # fin de traitement de la ligne courante ' text.txt
