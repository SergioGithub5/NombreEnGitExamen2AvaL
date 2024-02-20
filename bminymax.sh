#!/bin/bash
min=300
max=0
ciu1=""
mes1=""
ano1=""
ciu2=""
mes2=""
ano2=""
while read -r ciudad mes ano consumo; do

    if [ "$consumo"  > "$max" ]; then
        max="$consumo"
        ciu1="$ciudad"
        mes1="$mes"
        ano1="$ano"
        
    elif [ "$consumo"  < "$min" ]; then
        min="$consumo" 
        ciu2="$ciudad"
        mes2="$mes"
        ano2="$ano" 
    fi
done < consumos.txt
echo "El maximo es $ciu1 $mes1 $ano1"
echo "El minimo es $ciu2 $mes2 $ano2"