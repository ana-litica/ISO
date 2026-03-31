#Recibe como parametro el nombre de un archivo o directorio, informa si existe, que es y si no existe, lo crea
#!/bin/bash
if [ $# -ne 1 ]; then
	exit 1
else
	if [ -e $1 ];then 
		if [ -f $1 ]; then
			echo "$1 es un archivo."
		elif [ -d $1 ];then
			echo "$1 es un directorio."
		fi
	else
		mkdir $1
	fi
fi
exit 0
