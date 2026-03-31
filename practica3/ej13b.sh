#Recibir como parametro el nombre de un archivo 
#Si existe: Decir si es archivo o directorio
#Si no existe: crear el directorio
#!/bin/bash
if [ $# -ne 1 ];then
       exit 1
else
	if [ -f $1 ]; then
		echo "$1 existe y es un archivo"
	elif [ -d $1 ]; then
		echo "$1 existe y es un directorio"
	else
		echo "$1 no existe"
		mkdir "$1"
	fi
fi	
