#!/bin/bash

#Param
#./NomFichero Extension NumFicheros Ruta
#./script7.sh fichero py 3 test/

#$0 es el nombre del chichero

#asi es como se crea masomenos una funcion 
error(){
    echo $1
    exit 1
}

if [ $# -ne 2 ]; then 
    echo "Uso: ./NombreFich Prefijo- DirCanciones"
fi 

if [ ! -d $2 ]; then 
    echo "el directorio seleccionado no existe"
fi

for fichero in `ls $2`; do
    #nombre actual
    name="$2/$fichero"

    #nombre nueco
    new_name="$2/$1$fichero"

    #cambio de nombre
    mv $name $new_name

    echo "$name -> $new_name" | tr -s / 

    #mv "$2/$fichero"  "$2/$1$fichero" tambien sirve
done