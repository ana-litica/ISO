#Menu
#!/bin/bash
echo "MENU DE COMANDOS"
select opcion in ejercicio03 EvaluarExpresiones EstructurasDeControl RenombrarArchivos Reporte Mayusculas VerificarLogIn; do
	case $opcion in 
		"ejercicio03")
			bash ej3.sh
			;;
		"EvaluarExpresiones")
			select incisos in a b c; do
				case $incisos in 
					"a")
					bash ej12a.sh
					;;
					"b")
					echo "Ingrese dos valores"
					read valor1 valor2
					bash ej12b.sh $valor1 $valor2
					;;
					"c")
					bash ej12c.sh
					;;
				esac
			done
		"EstructurasDeControl")

					
