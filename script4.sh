#!/bin/bash

echo "Escribe el nombre del usuario que deseas buscar"
read u

echo "¿Cuántos dias atras deseas buscar su registro"
read di
as="days"
re=$di$as
/usr/bin/last "$u" -s "-$re"
