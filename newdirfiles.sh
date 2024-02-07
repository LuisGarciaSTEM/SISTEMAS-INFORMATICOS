# !/bin/bash

# Comprobamos que los argumentos son 3 y que el segundo 

if [ $# == 3 ] && [ $2 -ge 1] && [ $2 -le 99]
 then
	echo "Crear todo"

if [ "$1"  ]; then
	mkdir -p  "$1"
	printf "Directorio creado." 
fi

cd "$1"


for ((i=1; i<$2; i++)); do
	touch "$3".txt
	print "Directorio creado."
done


