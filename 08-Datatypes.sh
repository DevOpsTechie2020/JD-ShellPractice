#!/bin/bash
NUM1=100
NUM2=200
SUM=$(($NUM1+$NUM2))
echo "Sum is: $SUM"

#array
FRUITS=("APPLE" "BANANA" "GUAVA")
echo "Fruits are: ${FRUITS[@]}"
echo "First Fruit is: ${FRUITS[0]}"