#Escribir un script que verifique cada 5 segundos si un usuario está loqueado. El nombre del usuario es pasado como parametro.
#En caso de que se detecte el usuario logueado, se deberá informar: "El usuario X es usuario del sistema", guardar en un 
#archivo llamado usuarios.log el nombre y la fecha y terminar el script. Tenga en cuenta que la información del archivo NO
#debe pisarse y que el archivo resultante lo debe almacenar en una ubicación apropiada.
#!/bin/bash
if [ $# -ne 1 ];then
	exit 1
fi
if [ "$(cat /etc/passwd | grep "$1" | cut -d: -f1)" != "$1" ];then
	echo "El usuario $1 no existe."
	exit 2
fi
while [ true ];do
	if  users | grep "$1" ;then
		echo "El usuario $1 es usuario del sistema."
		break
	fi
	sleep 5
done
echo "$1 - $(date)" >> $(pwd)/usuarios.log
#echo "$1 - $(date)">> $HOME/usuarios.log #var/log
exit 0
