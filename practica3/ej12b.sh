#Recibir como parametro dos numeros 
#Realizar la suma, resta, multiplicacion y deir cual es mayor
#!/bin/bash
if [ $# -ne 2 ];then
	exit 2
else
	echo "La suma de los valores recibidos es $[ $1 + $2 ]"
	echo "La resta de los valores recibidos es $[ $1 - $2 ]"
	echo "La multiplicacion de los valores recibidos es $(expr $1 \* $2 )"
	if [ $1 > $2 ];then
		echo "$1 es mayor que $2"
	else
		echo "$2 es mayor que $1"
	fi
fi
exit 0
