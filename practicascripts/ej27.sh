#Recibe como paramtetro un el nombre de un directorio. Valida que exista, si no existe, termina el script con cod de error 4.
#Si existe, cuenta por separado la cantidad de archivos que se encuentran en él para los cuales el usuario que ejecuta el script tiene permisos de lectura e informa los valores en pantalla.
#Si son subdirectorios, no deben procesarse ni tampoco sumarse
if [ $# -ne 1 ]; then
	exit 1
elif [ ! -e $1 ];then
	exit 4
fi
cantidad=0
echo $(ls $1)
for archivo in $(ls $1); do
	if [ ! -d $archivo ] && [ -r $archivo ] && [ -w $archivo ];then
		let cantidad++
	fi
done
echo "La cantidad de archivos con permisos de lectura y escritura es $cantidad"
exit 0
