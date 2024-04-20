#!/bin/bash

GODS=("Shiva" "Rama" "Krishna")

#ikkada manam above array list anedhi stars from 0 , nundi start avthundi ante shiva=0 rama=1 krishna=2 ila print avuthundhi

#kani above array size matram 3 avthundhi , size 1 nundi consider chesthundhi

#index anedhi kuda 0 nundi start avthundhi 0,1,2, ila 

echo "frist god is: ${GODS[0]}"
echo "second god is: ${GODS[1]}"
echo "third god is: ${GODS[2]}"
echo "All gods are: ${GODS[@]}"

echo "All gods are in full: ${GODS[@]}"