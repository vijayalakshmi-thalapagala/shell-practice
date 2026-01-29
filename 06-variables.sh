#!/bin/bash


######### array ##########

my_array=["apples", "banana", "orange", "cherry"]

echo "all fruits are here only $my_array[$@]"
echo "u can eat this $my_array[0] fruit"
echo "u can eat this $my_array[1] fruit"
echo "u can eat this $my_array[2] fruit"