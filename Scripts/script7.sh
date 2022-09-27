#!/bin/bash

#Param
#./NomFichero Extension NumFicheros Ruta
#./script7.sh fichero py 3 test/
#asi es como se crea masomenos una funcion 
error(){
    echo $1
    exit 1
}

#"Automatizacion de Tareas"

#si los parametros no son igual a 4
if [ $# -ne 4 ]; then
    error "Uso: ScripName Extension NumFicheros Ruta"   
fi 


#comprueba si el 4to parametro es un directorio
#con ! negamos una condicion 
if [ ! -d $4 ]; then
    error "El directorio no existe"
    #salimos del sistema, con el codigo de salida 1 que indica un error    
fi

#Si el numero de ficheros a crear es menor a 1, se mandara un erro con un mensaje 
if [ $3 -lt 1 ]; then
    error "Error: el numero de ficheros que desea crear es incorrecto"
fi

#iteramos el numero de veces asignado para el numero de ficheros
for (( i = 1; i <= $3; i++ )); do
    #creamos un strig con "ubicacion/nombre.textension"
    name="$4/$1$i.$2"
    if [ $i -lt 10 ]; then
        name="$4/$10$i.$2"
    fi
    #pasamos la direccion anterior y como no existe y estamos usando el "touch" pues lo creara
    echo "Creando fichero: $name" | tr -s /
    touch $name
done