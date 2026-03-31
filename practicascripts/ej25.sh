#Recibe una cantidad desconocida de parametros. Cada parametro representa la ruta absoluta de un archivo o directorio del sistema
#Iterar sobre los parametros y para los parametros en posiciones impares, verificar si existe, imprimir que si es archivo o directorio e informar los inexistentes
#!/bin/bash
if [ $# -lt 1 ];then
	exit 1
else
	parametros=($*)
	for ((i=0; i<$#; i++));do
		if [ $(($i % 2)) != 0 ];then
			if [ -e ${parametros[$i]} ];then
				if [ -f ${parametros[$i]} ];then
					echo "${parametros[$i]} es un archivo"
				elif [ -d ${parametros[$i]} ]; then
					echo "${parametros[$i]} es un directorio"
				fi
			else
				echo "EL archivo o directorio ${parametros[$i]} no existe"
			fi
		fi
	done
fi
exit 0
