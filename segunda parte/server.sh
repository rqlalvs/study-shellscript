#!/bin/bash

resposta-http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

if [ $resposta_http -ne 200 ]
then
mail -s "Problema no servidor" email@gmail.com<<del
Houve um problema com o servidor.
del
    systemctl restart apache2
fi