echo "CANTIDAD DE REGISTROS DE CADA PEPTIDO" > amp.txt
cut -d "," -f 3 grampa.csv | sort | uniq -c >> amp.txt
echo "LONGITUD DE LOS PEPTIDOS QUE TIENEN EL DOMINIO WGS" > wgs.csv
cut -d "," -f 4 grampa.csv | grep -n "WGS" >> wgs.csv
