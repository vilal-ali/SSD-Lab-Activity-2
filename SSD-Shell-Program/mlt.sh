#!/bin/bash
clear
sum=1
n=($@)
for ((i=0;i<${#n[@]};i++))
do
    #echo ${n[$i]}
    #sum=$((sum * ${n[$i]}))
    multi=$((${n[$i]}))
    base=$((${n[$i]}))
    for ((i=0;i<=${#n[i]};i++))
    do
        base=$((base * $multi))
    done
    echo $base
done
#echo $sum