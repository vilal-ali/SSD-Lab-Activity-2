#!/bin/bash
# expr with space does give the value as outputexpr 23 + 29  #52
# expr with no spaces just prints the stringexpr  23+29 #23+29
# expr with double quotes just prints the string
expr  "23+29" 
#23+29
# expr with escape character (backslash) will give us multiply operator. ‘*’directly does work here.
expr 5 \* $1 
# prints based on the argument passed during execution
# we get syntax error if we give * directly
expr 5 * $1  # expr: syntax error
# modulus operation -remainder when the first item is divided by second
expr 21 % 2 #1
#expr with asubstitute in order to display it in a variable
a=$( expr 43 -5 )
echo $a #38
