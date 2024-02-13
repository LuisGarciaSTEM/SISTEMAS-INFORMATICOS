#!/bin/bash

suma=0
contador=0

for carta in "$@"; do
    if [ "$carta" -eq 1 ]; then
        suma=$((suma + 11))
        contador=$((contador + 1))
    elif [ "$carta" -gt 10 ] && [ "$carta" -le 13 ]; then
        suma=$((suma + 10))
    elif [ "$carta" -le 10 ]; then
        suma=$((suma + carta))
    else
        echo "Número de carta no permitido: $carta"
        exit 1
    fi
done

if [ $suma -le 21 ]
then 
    echo "La suma es $suma. HAS GANADO !!! "
else 
    echo "La suma es $suma. HAS PERDIDO !!! "
fi  