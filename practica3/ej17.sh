#Imprime los nombres de los archivos que se encuentran en el directorio actual,
#Intercambia mayúsculas por minúculas y elimina la letra a,A
#!/bin/bash
ls | tr -d '[Aa]' | tr '[:upper:][:lower:]' '[:lower:][:upper:]'
