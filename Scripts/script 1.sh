#!/bin/bash

#un scrip es una secuencia de comandos 
echo -n "Instalar programa? [s/n]: " #escibre un mensajae 
read result #se bloquea hasta que escribimos algo
#echo "Tu mensajes es: $result" #se imprime el mensaje 

#en los if se a implementados un Regex de Mayusculas y Minusculas
if [[ $result == [sS] ]]; then #de esta forma se escribe el if
    echo "Instalando Programas..."
elif [[ $result == [nN] ]]; then #forma de decir el else if 
    echo "El programa no se instalara..."
else 
    echo "Opcion invalida"
fi

#cadena="Un Vealor"
#echo $cadena