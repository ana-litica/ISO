#Realice un script que agregue todos los nombres de usuario del sistema a un arreglo e implemente las siguientes funciones:
#!/bin/bash

agregar(){
	arreglo=($(cat /etc/passwd | cut -d: -f1))
}

#existe<parametro1>: Devuelve 0 si el usuario existe en el arreglo, 1 en caso contario.
existe(){
	if [ ! $# -eq 1 ];then
		return 2
	fi
	indice=0
	encontrado="false"
	while [ $indice -le ${#arreglo[@]} ];do
		if [ "${arreglo[$indice]}" = $1 ];then
			echo $indice
			return 0
		fi
		let indice++
	done
	return 1
}

#eliminar_usuario<parametro1>: Si el usuario pasado como parametro existe en el arreglo lo elimina del mismo. Caso contrario devuelve código de error 2.

eliminar_usuario(){
	if [ $# -eq 1 ];then
		existe $1
		if [ $? -eq 0 ];then
			pos=$(existe $1)
			unset arreglo[$pos]
			arreglo=(${arreglo[*]})
		fi
	else 
		return 2
	fi	
}

#usuarios_con_patron<parametro1>: Recorre el arreglo e imprime los nombres de usuario que contengan el patron pasado como parametro.Si no encuentra ninguno, devuelve el código de error 12.
#iterar
usuarios_con_patron(){
	echo  $(echo ${arreglo[*]} | grep "*debian*")
	#if [-z -n ] buscar
}

#cantidad: Imprime la cantidad total de usuarios en el arreglo. Si está vacío, devuelve el código de error 95.

cantidad(){
	local long=${#arreglo[*]}
	if [ $long -ne 0 ];then
		echo "Cantidad de usuarios en el arreglo: $long."
	else
		return 95
	fi
}

#usuarios: Imprime todos los nombres de los usuarios que están en el arreglo. Si está vacío, devuelve código de error 95.

usuarios(){
	if [ ${#arreglo[*]} -ne 0 ];then
		echo "${arreglo[@]}"
	else
		return 95
	fi
}


agregar
echo "${arreglo[*]}"
existe debian
echo $?

pos=$(existe debian)
echo $?
echo $pos

usuarios_con_patron
