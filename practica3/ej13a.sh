#Listar los numeros del 1 al 100 y sus cuadrados
#!/bin/bash
for ((i=1; i<=100; i++)); do
	echo "Numero: $i. Cuadrado: $(expr $i \* $i)"
done
