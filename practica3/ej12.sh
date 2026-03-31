#Realizar un script que solicite dos números, los lea de entrada Standard e imprima la multiplicación, suma, resta y cual es el mayor de los numeros leídos.
#!/bin/bash
echo "Ingrese dos numeros"
read nro1 nro2
echo "La suma de los valores ingresados es $[ $nro1 + $nro2 ]"
echo "La resta de los valores ingresados es $[ $nro1 - $nro2 ]"
echo "La multiplicacion de los valores ingresados es $(expr $nro1 \* $nro2 )"
if [ $nro1 > $nro2 ]; then
	echo "$nro1 es mayor que $nro2"
else	
	echo "$nro2 es mayor que $nro1"
fi
