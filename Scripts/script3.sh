#!/bin/bash

#"Operaciones Logicas"
echo -n "Escribe un numero: "
read num 

#Cuando se trabaje con operaciones logicas con numeros es mejor solo trabajor con un par de "[]"
#Cuando se requiera de trabajar con Regex y con String es mejor usar dos pares de "[[ ]]"

#Operador and "&&" en bash es: "-a" 
    #num es igual o mayor a 5 y num es menor o igual a 10
if [ $num -ge 5 -a $num -le 10 ]; then
    echo "tu numero se encuentra entre el [5 y 10]"
else
    echo "tu numero no se encuetra entre [5 y 10]" 
fi

##########################################################################################

echo -n "Escribe un numero: "
read num2 

#Operador or "||" en bash es: "-o"
    #tu numero es 5 o 10
if [ $num2 -eq 5 -o $num2 -eq 10 ]; then
    echo "Tu numero es [5 o 10]"
else
    echo "Tu numero no es [5 o 10]"
fi

######Comentarios######
#-a and "&&"
#-o or "||"