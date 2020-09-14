#!/bin/bash
read -p "Enter a number (must be greater than 20) : " n
read -p "Enter a number (must be greater than 20) : " m
if test $n -gt $m
then
    echo "$n is greater than 20."
else
    echo "You are not following my instructions."
fi