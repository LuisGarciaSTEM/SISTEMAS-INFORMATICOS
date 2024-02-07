# !/bin/bash

if [ $# == 3 ]
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


