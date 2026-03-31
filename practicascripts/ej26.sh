#Operaciones basicas sobre arreglos mediante funciones
#!/bin/bash

#Crea un arreglo llamado array vacio
inicializar(){
	arrayVacio=()
}

#Agrega al final de arreglo un parametro recibido
agregar_elem(){
	if [ $# -eq 1 ];then
		arrayVacio+=($1)
	fi
}

#Elimina del arreglo un elemento que se encuentra en una posicion recibida como parametro
eliminar_elem(){
	if [ $# -eq 1 ] && [ "$1" -lt "${#arrayVacio[*]}" ]; then
	#if [ $# -eq 1 ]; then
		unset arrayVacio[$1]
		arrayVacio=(${arrayVacio[*]})
	fi
}

#Imprime la longitud del arreglo en pantalla
longitud(){
	echo ${#arrayVacio[*]}
}

#Imprime todos los elementos del arraglo en pantalla
imprimir(){
	echo ${arrayVacio[*]}
}

#Crea un arreglo con longitud parametro 1 y en todas las posiciones asigna el parametro 2
inicializar_Con_Valores(){
	if [ $# -eq 2 ];then
		inicializar
		for indice in {0.."$1"}; do
		#for((i=0; i<$1; i++));do 
			agregar_elem $2
		done
	fi
}

#inicializar_Con_Valores 4 2

inicializar
agregar_elem 3
agregar_elem 4
agregar_elem 1
agregar_elem 2
imprimir 

eliminar_elem 2
imprimir
