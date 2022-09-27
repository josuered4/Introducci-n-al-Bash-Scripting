#!/bin/bash

#"FICHEROS COMO PARAMENTROS"

#comprueba si el primer parametro es un fichero 
#el problema es que si el parametro viene vacio va a entrar al if 
if [ -f $1 ]; then
    echo "El fichero existe"
else
    echo "EL fichero no existe"
fi

#comprueba si el primer parametro es un directorio
#con ! negamos una condicion 
if [ ! -d $1 ]; then
    echo "El directorio no existe"
    exit 1 #salimos del sistema, con el codigo de salida 1 que indica un error    
fi

#names=`ls $1` #de esta forma almacenamos el resultado de un comando 
#echo $names

#forma de hacer una for echa con una lista
#for f in $names; do 
#    echo $f
#done 

#el for trabaja con el resultado 
totalBytes=0
for f in `ls $1`; do 
    #con esto es una forma de concatenar el nombre del directorio padre
    #para mostrar una especie de ruta
    name="$1/$f" #almacenamos el restado en una variable.
    if [ -f $name ]; then
        #echo $name
        bytes=`ls -l $name | cut -d " " -f 5`
        echo "Fichero: $name Ocupa: $bytes" | tr -s / #para quitar los elementos que repiten mas de una vez por row
        #los signos $ no son tan necesarios 
        (( total += bytes )) #tambien se puede usar operadores como "+="
    fi
done 

#para implementar los carateres de escape se requiere de -e
echo -e "\nel total de los ficheros es: $total"