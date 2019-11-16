#!/bin/bash -x
declare -a arrayForSnakeAndLadder
arrayForSnakeAndLadder=( $(seq 1 100) )
for i in "${arrayForSnakeAndLadder[@]}"
do
echo "array: ${arrayForSnakeAndLadder[i]}"
done
