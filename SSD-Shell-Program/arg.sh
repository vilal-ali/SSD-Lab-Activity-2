
#!/bin/bash
result=$1
echo $result
for arg in "$@"
do
    #myvar=$(expr $myvar + $arg)
    arr = (( $arg ))
    #result=$(( echo "$result^$arg" | bc ))
    #myvar=$(expr $myvar * $arg )
    #echo $arg
done
#echo $result
echo ${ arr[@] }