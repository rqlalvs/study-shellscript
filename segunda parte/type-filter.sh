#!/bin/bash

cd ~/apache-log

if [ -z $1 ]
then
    while [ -z $requisicao ]
    do
        read -p "Insira algum desses parametros: (GET,PUT,POST,DELETE): " requisicao
        letra_maiuscula=$(echo $requisicao | awk '{ print toupper($1) }')
    done
else
    letra_maiuscula=$(echo $1 | awk '{ print toupper($1) }')
fi

case $1 in
        GET)
        cat apache.log | grep GET
        ;;

        POST)
        cat apache.log | grep POST
        ;;

        PUT)
        cat apache.log | grep PUT
        ;;

        DELETE)
        cat apache.log | grep DELETE
        ;;

        *)
        echo "Insira um parametro valido!"
        ;;
esac