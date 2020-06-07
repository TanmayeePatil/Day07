#!/bin/bash

echo "Randomly generating 10 numbers"

i=0

while [ $i -lt 10 ]
do
 num=$(( RANDOM ))
 if [ ${#num} -le 3 ] && [ ${#num} -gt 2 ];then
  arr[$i]=$num
  (( i++ ))
 fi
done

echo "Array Elements:"
echo ${arr[@]}

secondlargest=$(printf '%s\n' "${arr[@]}" | sort -n | tail -2 | head -1)
echo "Second Largest Number is $secondlargest"

secondSmallet=$(printf '%s\n' "${arr[@]}" | sort -nrb | tail -2 | head -1)
echo "Second Smallest Number is $secondSmallet"

