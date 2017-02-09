#!/bin/bash
R=$(runlevel  | awk '{ print $2}')
for s in /etc/rc${R}.d/*; do  basename $s | grep '^S' | sed 's/S[0-9].//g' ;done

echo "¿Te gustaría desactivar algunos de los servicios?[s/n]"
read resp
while [ "$resp" != "n" ];do

	echo "Escriba el nombre del servicio que desea desactivar"
	read serv
	echo "Se desactivara el servicio $serv"
	echo `service $serv stop`
	echo "¿Desea desactivar otro servicio?[s/n]"
	read resp
done
