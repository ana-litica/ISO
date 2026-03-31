#Mostrar 3 opciones y seleccionar una
#!/bin/bash
select opcion in Listar DondeEstoy QuienEsta; do
	case $opcion in
		"Listar")
			ls
			;;
		"DondeEstoy")
			pwd
			;;
		"QuienEsta")
			who
			;;
		*)
			break
			;;
	esac
done

