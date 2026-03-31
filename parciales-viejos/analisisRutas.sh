#Escriba un script que reciba una cantidad desconocida de parámetros al momento de su invocacion (debe validar que al menos se reciba uno). Cada parámetro representa una ruta absoluta de un archivo o directorio en el sistema. El script deberá iterar por todos los parámetros recibidos, y:
# -Si el parámetro es un archivo existente en el FileSystem deberá comprimirlo en lugar del original.
# -Si el parámetro es un directorio existente en el FileSystem:
# 	-Si tiene permiso de Lectura deberá empaquetarlo y comprimirlo.
# 	-Si tiene permiso de escritura deberá eliminarlo junto con su contenido.
# -Si el parámetro no es un elemento del FileSystem (no existe), deberá contarlo e indicar la cantidad total al finalizar el script.
# !/bin/bash
if [ $# -lt 1 ];then
	exit 1
fi
inexistentes=0
for path in "$@" ;do
	if [ ! -e $path ];then
		let inexistentes++
	else
		if [ -f $path ];then
			tar -czvf "$path.targz" "$path"
		elif [ -d $path ];then
			if [ -r $path ];then
				tar -czvf "$path.targz" "$path"
			elif [ -w $path ];then
				# rmdir porque es un directorio
				rm -r $path
			fi
		fi
	fi
done
echo "La cantidad de elementos inexistentes es $inexistentes"
exit 0
