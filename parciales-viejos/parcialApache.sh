# Realice un script que verifique cada 5 segundos si el proceso apache se está 
# ejecutando en el sistema. El script debe correr indefinidamente hasta que 
# verifique que eb 10 ocasiones ha encontrado el proceso apache corriendo, lo
# cual debe causar la terminación del proceso, informar dicha acción en pantalla
# y posteriormente causar la terminación del script con condición de retorno 50
#!/bin/bash
encontrado=0
while [ encontrado < 10 ];do
	apache=$(ps | grep apache | wc -l)
	if [ ];then
		let encontrado++
	fi
	sleep 5
done
echo kafhadf
exit 50
