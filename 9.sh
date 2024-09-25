#!/bin/bash

read n
sum=0

for (( i=1; i<=n; i++ ))
do
    read a
    sum=$((sum + a))
done

avg=$(echo "scale=5;$sum / $n" | bc)

printf "%.*f\n" 3 "$avg"
