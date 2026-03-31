#Recibir la operacion y los valores como parametro
#Calculadora
#!/bin/bash
if [ 3 -ne $# ];then
	exit 2
else
	case $1 in 
		"+")
			echo "La suma de los valores es $[ $2 + $3 ]"
			;;
		"-")
			echo "La resta de los valores es $[ $2 - $3 ]"
			;;
		"*")
			echo "La multiplicacion de los valores es $(expr $2 \* $3 )"
			;;
		"%")
			echo "El modulo de los valores es $[ $2 % $3 ]"
			;;
	esac
fi
