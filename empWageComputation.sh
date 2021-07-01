#!/bin/bash -x
echo "Enter a value of a"
read a
echo "Enter a value of b"
read b
echo "Enter a value of c"
read c
operation1=$(($(($a+$b))*$c))
operation2=$(($(($a*$b))+$c))

echo $operation1
echo $operation2
