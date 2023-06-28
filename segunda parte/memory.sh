#!/bin/bash

memoria_total=$(free | grep -i mem | awk '{print $2}')
memoria_consumida=$(free | grep -i mem | awk '{print $3}') 
relacao_memoria=$(bc <<< "scale=2;memoria_total/memoria_consumida *100" | awk -F. '{print $1}')

if [ $relacao_memoria -gt 50]
then
mail -s "Consumo de memoria acida do limite" adm.multillidae@gmail.com<<del
O consumo de memoria esta acima do limite. Atualmente o consumo e relacao_memoria
del