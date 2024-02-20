#!/bin/bash
read -p "Dame el nombre de una ciudad: " ciudad_d
cons=0
while read -r ciudad mes ano consumo; do
    if [ $ciudad_d = $ciudad ]; then
        cons+=$consumo
    fi
done < consumos.txt

 echo "$cons"