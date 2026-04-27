#!/bin/bash


#array declaration " ${ARRAY_NAME[INDEX NUMBER]}

MOVIES=("Mad" "pushpa" "Kick" )


echo "The first movie is ${MOVIES[0]}"
echo "The first movie is ${MOVIES[1]}"
echo "The first movie is ${MOVIES[2]}"

echo "The first movie is ${MOVIES[@]}"
