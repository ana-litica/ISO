#!/bin/bash
if [ $# -ne 1 ]; then
	exit 1
elif [ ! -e $1 ];then
	exit 4
fi
archivos=$(ls $1)
cantidad=0
for ((i=0; i<${#archivos[*]}; i++));do
	if [ ! -d ${archivos[$i]} ] && [ -r ${archivo[$i]} ] && [ -w ${archivos[$i]} ];then
			let cantidad++
	fi
done
echo "La cantidad de archivos con permisos de lectura y escritura es $cantidad"
exit 0
