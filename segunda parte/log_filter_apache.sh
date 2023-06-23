#!/bin/bash

if [[ $1 =~ $regex ]]
then
    cat apache.log | grep $1
    if [ $? -ne 0 ]
    then
        echo "O endereco IP procurado nao esta presente no arquivo"
    fi
else
    echo "Formato não é válido"
fi