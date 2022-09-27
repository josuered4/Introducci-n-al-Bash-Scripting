#!/bin/bash

#"PARAMENTROS"
##Cuando se le pasa valores a un scrip o funcion son argumentos 
##Cuando haces el scrip o funcion son parametros

# ./script5.sh param param2 param3 => es un ejemplo de como ejecutar 

# con la expresion "$#" se retorna el numero de parametros pasados 
echo "Numero de parametros recividos: $#"

#con la expresion regular "$" segudo de un numero se regresa el numero del parametro
echo "El parametro 1 es: $1"
echo "El parametro 2 es: $2"