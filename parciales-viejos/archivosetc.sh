#Realice un script que agregue a un arreglo los nombres de los archivos del 
#directorio /etc cuya terminación sea .conf e implemente las siguientes 
#funciones: 
#!/bin/bash

agregar(){
	archivos=($(find /etc -name "*.conf"))	
}

#cantidad: Imprime la cantidad de archivos del /etc con terminación .conf
cantidad(){
	echo ${#archivos[@]}
	
}

#verArchivos: Imprime los nombres de todos los archivos del /etc con terminación conf
verArchivos(){	
	for elemento in ${archivos[@]};do
		echo $elemento
	done
}

#existe: Recibe como parámetro el nombre de una archivo con terminación .conf e imprime en pantalla si existe en el /etc o no
existe(){
	if [ $# -ne 1];then
		return 1
	fi
	existe="false"
	indice=0
	while [ $existe = "false" && $indice<${#archivos[*]} ]; do
		if [ $1 -eq ${archivos[i]} ];then
		       $existe=true
	       	else
			let i++
		fi
	done
	if [ $existe = "false" ];then
		echo "El archivo $1 no existe."
		return 2
	else
		echo "El archivo $1 existe."
		return 0
	fi	
}

#eliminar: Recibe como primer parametro el nombre de un archivo con terminacion .conf y como segundo parametro la cadena 
#lógico o físico. Si el segundo parámetro es lógico, sólo borra la entrada en el arreglo, si es físico borra la entrada en el 
#arreglo y en el FileSystem informando en cada caso la acción realizada.
eliminar(){
	if [ $# -ne 2 ];then
		return 1
	fi
	existe $1
	if [ $? != 0 ];then
		return 2
	fi
	indice=0
	encontrado="false"
	while [ $encontrado = "false" && $indice<${#archivos[*]} ];do
		if [ ${archivos[$indice]} -eq "$1" ];then
			$encontrado="true"
		else
			let indice++
		fi
	done
	unset archivo[$indice]
	archivo=$archivo[*]
	if [ $2 = "fisico" ];then
		rm "/etc/$1"
	       echo "El archivo $1 se eliminó del arreglo y del FileSystem."
       else
		echo "El archivo $1 se eliminó del arreglo."	       
	fi
}
