#Renombra archivos de un directorio pasado como parametro. Si recibe:
#-a CADENA -> renombra concatenando AL FINAL 
#-b CADENA -> renombre concatenando AL PRINCIPIO
#!/bin/bash
if [ $# -ne 3 ]; then
	exit 1
elif [ ! -d $1 ]; then
	exit 2 #$1 es el directorio
elif [ "-a" != "$2" ] && [ "-b" != "$2" ]; then
       exit 3 #$2 es la opcion 
else
	for archivos in $(ls $1); do
		if [ -f $archivos ];then
			if [ $2 == "-a" ];then	
				echo $3
				mv "$1/$archivos" "$1/$archivos$2"
			else			
				mv "$1/$archivos" "$1/$2$archivos"
			fi
		fi
	done
fi
exit 0
