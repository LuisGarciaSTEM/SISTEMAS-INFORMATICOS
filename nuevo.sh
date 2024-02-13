#!/bin/bash

# Haz un script que recriba como primer argumento el nombre de un fichero y 
# escriba el resto de argumentos en el fichero.
# La primera línea del fichero debe ser el número de filas escritas.

#!/bin/bash

fichero=$1
numeroArgumentos=$#

echo "$numeroArgumentos "
# Escribir el contenido al archivo
echo "$num_filas" > "$nombre_archivo"
echo "$@" >> "$nombre_archivo"

echo "Contenido escrito en $nombre_archivo."
