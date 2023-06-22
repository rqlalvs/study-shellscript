#!/bin/bash

if [ ! -d log ]
then
    mkdir log
fi

processos(){
processos=$(ps -e -o pid --sort -size | head -n 11 | grep [0-9])
for pid in $processos
do
    nome_processo=$(ps -p $pid -o comm=)
    echo $(date +%F,%H:%M:%S) >> log/$nome_processo.log
    tamanho_processo=$(ps -p $pid -o size| grep [0-9])
    echo "$(bc <<< "scale=2;$tamanho_processo/1024") MB" >>> log/$nome_processo.log
done
}

processos
if [ $? -eq 0]
then
    echo "Sucesso."
else
    echo "Houve algum problema"
fi

