#!/bin/bash


######### array ##########

my_array=("apples" "banana" "orange" "cherry")

echo "all fruits are here only ${my_array[@]}"
echo "u can eat this ${my_array[0]} fruit"
echo "u can eat this ${my_array[1]} fruit"
echo "u can eat this ${my_array[2]} fruit"


my_veg=("carrot" "cucumber" "beetroot" "chilli" "tomato")

echo "what you want from these veg ${my_veg[@]}"
echo "this ${my_veg[0]} is just 10 ruppes"
echo "this ${my_veg[1]} is just 15 rupees"
echo "this  ${my_veg[2]} is just 20 rupees"
echo "these ${my_veg[3]} and ${my_veg[4]} 25 only "