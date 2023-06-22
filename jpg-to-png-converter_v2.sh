#!/bin/bash

cd ~/Downloads/imagens-novos-livros

for arquivo in *
do
    if [ -d $arquivo ]
    then
        cd $arquivo
        for conteudo_arquivo in *
        do
            if [ -d $conteudo_arquivo ]
            then
                #entra e repete
            else
                #Converte aqui tbm
            fi
        done
    else
        #converte aqui
    fi
done