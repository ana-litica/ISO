#Mueve todos los archivos ejecutables del directorio actual a un subdirectorio "bin" del directorio HOME del usuario actualemnte logueado. 
#Se deben imprimir en pantalla los nombres de los que se mueven e indicar cuantos o ninguno.
#Si el directorio bin no existe, debe ser creado
#!/bin/bash
directorio="$HOME/bin"
if [ ! -e $directorio ];then
	mkdir $directorio
fi
movidos=0
for archivo in $(ls);do
	if [ -x $archivo ];then
		mv $archivo $directorio
		echo "El archivo $archivo se movió al diretorio bin"
		let movidos++
	fi
done
	if [ $movidos -eq 0 ];then
		echo "No se movió ningun archivo"
	else
		echo "Se movieron $movidos archivos"
	fi
exit 0
