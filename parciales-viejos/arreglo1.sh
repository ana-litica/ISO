#Realice un script que reciba una cantidad indefinida de parámetros (al menos uno) y los agregue a un arreglo. Además debe 
#implementar las siguientes funciones:
#!/bin/bash

agregar(){
	arreglo=($*)
}

#existe <parametro1>: Imprime el índice dentro del arreglo donde está el parámetro <parámetro1>, sólo si este existe en el 
#arreglo. Adicionalmente, debe retornar 0 si el elemento existe en el arreglo o 1 en caso contrario.
existe(){
	if [ $# -ne 1 ];then
		exit 2
	fi
	indice=0
	while [ $indice -le ${#arreglo[*]} ];do
		if [ $1 -eq ${arreglo[$indice]} ];then
			echo "$indice"
			return 0
		fi
		let indice++
	done
	echo "El elemento $1 no está en el arreglo."	
	return 1
} 

#replace<parametro1><parametro2>: Reemplazar <parametro1> por <parametro2> en el arreglo (solo si <parametro1> existe).
replace(){
	if [ $# -ne 2 ];then
		return 1
	fi
	existe $1
	if [ $? -eq 0 ];then
		indice=$(existe $1)
		#echo ${arreglo[$indice]}
		arreglo[$indice]=$2
		#echo ${arreglo[$indice]}
	fi
}

agregar 1 2 3 4 
echo $(replace 2 3)
exit 0
