#Mostrar opciones que el usuario debe elegir
#Lista: lista el contenido del directorio actual
#DondeEstoy: muestra la ruta del directorio actual
#QuienEsta: muestra los usuarios conectados al sistema
#!/bin/bash
select opcion in Listar DondeEstoy QuienEsta Salir; do
	case $opcion in
		"Listar")
			ls
			;;
		"DondeEstoy")
			pwd
			;;
		"QuienEsta")
			echo $(users)
			;;
		"Salir")
			exit 0
			;;
	esac
done
