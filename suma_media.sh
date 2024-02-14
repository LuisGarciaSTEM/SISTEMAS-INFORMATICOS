#!/bin/bash
ñ
# Verificar el número de argumentos
if [ "$#" -lt 4 ]; then
    echo "Uso: $0 <nombre_directorio> <archivo_suma> <archivo_media> <números...>"
    exit 1
fi

# Argumentos
directorio="$1"
archivo_suma="$2"
archivo_media="$3"
shift 3
numeros=("$@")




# Haz un script que reciba los siguientes argumentos:
# 1 -> Nombre de directorio base
# 2 -> Nombre de fichero para la suma
# 3 -> Nombre de fichero para la media
# 4 y sucesivos -> Lista de números para operar

# El script debe crear el directorio y los ficheros indicados.
# El script debe calculat la suma y la media de todos los número
# y almacenar el resultado en los ficheros correspondientes