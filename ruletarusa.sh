#!/bin/bash

# Haz un script en el que dos usuarios juegan a la ruleta rusa
# El orden de inicio se decide a cara o cruz 
# cara: comienza el primer jugador y cruz: comienza el segundo jugador
# Debes crear un array booleano de 6 posiciones a false e insertar de forma 
# aleatoria un true.
# los jugadores van disparando en orden hasta que alguno tiene suerte

#!/bin/bash

function lanzarMoneda() {
    resultado=$((RANDOM % 2))
    if [ $resultado -eq 0 ]; then
        echo "cara"
    else
        echo "cruz"
    fi
}

function inicializarTambor() {
    tambor=([0]=false [1]=false [2]=false [3]=false [4]=false [5]=false)
    posicionBala=$((RANDOM % 6))
    tambor[$posicionBala]=true
}

function disparar() {
    posicionActual=$((RANDOM % 6))
    if [ "${tambor[$posicionActual]}" = true ]; then
        echo " ¡BANG! Jugador $jugadorActual pierde."
        exit 0
    else
        echo " Click. Jugador $jugadorActual sobrevive."
    fi
}

# Decidir el orden de inicio
ordenInicio=$(lanzarMoneda)

echo "Si toca cara, comienza el Jugador 1; si toca cruz, comienza el Jugador 2"
echo "Orden de inicio: $ordenInicio"

# Inicializar el tambor de la ruleta rusa
inicializarTambor

# Determinar el primer jugador
if [ "$ordenInicio" == "cara" ]; then
    jugadorActual=1
    otroJugador=2
else
    jugadorActual=2
    otroJugador=1
fi

echo "Comienza el Jugador $jugadorActual"

# Inicio del juego
balasRestantes=6

while [ $balasRestantes -gt 0 ]; do
    echo -n "Jugador $jugadorActual, presiona Enter para disparar..."
    read -s
    disparar

    balasRestantes=$((balasRestantes - 1))

    if [ $balasRestantes -gt 0 ]; then
        echo "Quedan $balasRestantes balas en la pistola."
    fi

    # Cambiar al siguiente jugador
    jugadorActual=$otroJugador
    otroJugador=$((3 - $jugadorActual))  # Alternar entre 1 y 2
done


