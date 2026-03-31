#Verifica cada 10 segundos si un usuario pasado como parámetro se logueó en el 
#sistema. Cuando se loguea informa 
#!/bin/bash
if [ $# -ne 1 ];then
	exit 2
if
if [ "$(cat /etc/passwd | grep $1 | cut -d: -f1)" != $1 ];then 
	exit 3
fi
while [ true ]; do
	if [ "$(users | grep $1 | cut -d: -f1)" = $1 ];then
	  	echo "El usuario $1 esta logueado en el sistema"
       		break	
	else
		sleep 10
	fi
done

