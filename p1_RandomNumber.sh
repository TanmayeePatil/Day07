#!/bin/bash

echo "Randomly generating 10 numbers"

i=0

while [ $i -lt 10 ]
do
 num=$((RANDOM))
 if [ ${#num} -le 3 ] && [ ${#num} -gt 2 ];then
  arr[$i]=$num
  (( i++ ))
 fi
done

echo "Array Elements:"
echo ${arr[@]}

for ((i=0;i<10;i++))
do
 for ((j=1;j<=10;j++))
  do
     if [[ ${arr[$i]} < ${arr[$j]} ]];then
         a="${arr[$i]}"
         arr[$i]="${arr[$j]}"
         arr[$j]=$a
     fi
  done
done

echo "The 2nd smallest number is ${arr[2]}"
echo "The 2nd largest number is ${arr[9]}"
