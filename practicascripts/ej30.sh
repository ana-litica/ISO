#Set en bash
#!/bin/bash

#Inicializa el set vacio
initializa(){
	Set=()
}

#Inicia el set con un conjunto de valores
initialize_with(){
	if [ $# -gt 0 ];then
		Set+=($*)
	fi
}

#Chequea si el conjunto contiene un valor recibido como argumento
contains(){
	if [ $# -ne 0 ];then
		indice=0
		while (true);do
			#encontrado
			if [ ${Set[$indice]} = $1 ];then
				return $indice
			#Es el final del set y no está
			elif [ $indice -eq ${#Set[*]}];then
				return 255
			elif  
			fi
			let indice++
		done
	fi
}

#Agregar un valor que recibe como argumento al conjunto 
add(){
	if [ $# -eq 1 ];then
		contains $1
		if [ $? -eq 0 ];then
			Set+=$1
		fi
	fi
}

#Elimina uno o mas valores del conjunto, se reciben como parametro
remove(){
	if [ $# -gt 0 ];then
		for parametros in $@; do
			contains $parametros
			pos=$?
			if [ pos -ne 255 ];then
				unset Set[$pos]
				Set=${Set[*]}
			fi
		done
	fi
}

#Imprime los elementos del conjunto, de uno por línea
print(){
	for valor in ${set[*]};do 
		echo $valor
	done
}

#Imprime los elementos del conjunto, de a uno por línea y ordenados alfabéticamente
print_sorted(){
	imprimir=$(print | sort)
	echo $imprimir	
}
