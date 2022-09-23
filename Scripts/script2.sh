#!/bin/bash

#arimetica utilizando bash
echo -n "Escribe un numero: "
read num 

#si el numero es mayo a 5 "gt" es como el > en otro lenguaje
#si el numero es menor a 5 "lt" es como el < en otro lenguaje
if [[ $num -gt 5 ]]; then
    echo "Tu numero es mayor a 5"
elif [[ $num -lt 5 ]]; then
    echo "Tu numero es menor a 5"
else 
    echo "Tu numero es igual a 5"
fi

##################################################################################
echo -n "Escribe un 2do numero: "
read num2

#si el numero es menor o igual a 5 "le" es como el <= en otros lenguajes
if [[ $num3 -le 5 ]]; then
    echo "Tu numero es menor o igual a 5"
else
    echo "Tu numero es mayor a 5"
fi
   
############################################################################
echo -n "Escribe un 3er numero: "
read num3

#si el numero es mayor o igual a 5 "ge" es como el >= en otros lenguajes
if [[ $num -ge 5 ]]; then
    echo "Tu numero es mayor o igual a 5"
else
    echo "Tu numero es menor a 5"
fi

############################################################################
echo -n "Escribe un 4to numero: "
read num4

#si el numero es igual a 5 "eq" es como el == en otros lenguajes
#si el numero no es igual a 5 "ne" es como el != en otros lenguajes
if [[ $num4 -eq 5 ]]; then
    echo "Tu numero es igual a 5"
elif [[ $num4 -ne 5 ]]; then
    echo "Es distinto a 5"
fi

######Comentarios######
#-gt greater than
#-ge greater or equal
#-lt lower than
#-le lower or equal
#-eq equal
#-ne not equal
