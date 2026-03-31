#Recibe "-a" para agregar al final, "-b" para agregar al inicio, una cadena y un directorio
#$1 es -a o -b, $2 es la cadena, $3 es el directorio
#!/bin/bash
if [ $# -ne 3 ];then
	exit 1
fi
if [ "$1" != "-a" ] && [ "$1" != "-b" ];then
	exit 2
fi
if [ ! -d $3 ];then
	exit 3
else
	for i in $(ls $3);do
		echo $i
		if [ -f "$3/$i" ];then
			echo "Llego"
			if [ "$1" == "-a" ];then
				mv "$3/$i" "$3/$i$2"
			else
				mv "$3/$i" "$3/$2$i"
			fi
		fi
	done
fi
exit 0
