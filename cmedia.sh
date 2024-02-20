#!/bin/bash

while read -r ciudad mes ano consumo; do
    if [ "$1" == "$ciudad" ]; then
        cons=$((cons + consumo))
        cont=$((cont + 1))
    fi
done < consumos.txt
media=$(($cons/$cont))
 echo "$media"