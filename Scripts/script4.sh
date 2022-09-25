#!/bin/bash

#"Operaciones bucles"
echo -n "Escribe un numero: "
read num 

#Bucle for
#La estructua del bucle y sus argumentos es casi similar al de los demas lenguajes de programacion
for (( i = 0; i < $num; i++ )); do
    #Senteneces
    echo $i
done
