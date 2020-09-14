#!/bin/bash

function luhn_validate
{
    num=$1
    shift 1

    len=${#num}
    is_odd=1
    sum=0
    for((t = len - 1; t >= 0; --t)) {
        digit=${num:$t:1}

        if [[ $is_odd -eq 1 ]]; then
            sum=$(( sum + $digit ))
        else
            sum=$(( $sum + ( $digit != 9 ? ( ( 2 * $digit ) % 9 ) : 9 ) ))
        fi

        is_odd=$(( ! $is_odd ))
    }

    # NOTE: returning exit status of 0 on success
    return $(( 0 != ( $sum % 10 ) ))
}
echo "Enter the card Number" c_num
read c_num 
if luhn_validate "$c_num"; then
    echo "$i is valid"
else
    echo "$i is not valid"
fi
#1234496713247997000
#for i in $(seq 1234496713247997000 1234496713247998000)
#do
#    if luhn_validate "$i"; then
#        echo "$i is valid"
#    else
#        echo "$i is not valid"
#    fi
#done