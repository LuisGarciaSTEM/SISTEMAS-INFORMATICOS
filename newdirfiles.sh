# !/bin/bash

# Comprobamos que los argumentos son 3 y que el segundo 

if [ $# == 3 ] && [ $2 -ge 1] && [ $2 -le 99]
then
	dirname=$1
	num_files=$2
	basefilename=$3

	'test -d $dirname'	


 
fi

cd "$1"


for ((i=1; i<$2; i++)); do
	touch "$3".txt
	print "Directorio creado."
done


