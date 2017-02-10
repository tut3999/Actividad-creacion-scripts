#!/bin/sh
#NR es el numero de orden de registro que se esta leyendo en cada momento
free -m | awk 'NR==2{printf "Memoria en uso: %s/%sMB (%sMB Libre)\n", $3,$2,$2-$3 }'
#NF es el numero de campos total que contiene el registro
df -h | awk '$NF=="/"{printf "Espacio en disco: %d/%dGB (%sGB libres)\n", $3,$2,$2-$3}'

top -bn1 | grep load | awk '{printf "Carga del CPU: %.2f\n", $(NF-2)}'
