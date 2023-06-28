#!/bin/bash

memoria_total=$(free | grep -i mem | awk '{print $2}')
memoria_consumida=$(free | grep -i mem | awk '{print $3}') 
relacao_memoria=$(bc <<< "scale=2;memoria_total/memoria_consumida *100" | awk -F. '{print $1}')
