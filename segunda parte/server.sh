#!/bin/bash

resposta-http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

if [ $resposta_http -eq 200 ]
then
    echo "Servidor com funcionamento regular."
else
    echo "Houve algum problema no servidor, reinicializando"
    systemctl restart apache2
    echo "Servidor reinicializado"
fi