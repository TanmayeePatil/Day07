#!/bin/bash

j=0

for i in `seq 100`
do
  rem=$(($i%10))
  rem2=$(($i/10))
  if [ $rem == $rem2 ];then
     arr[((j++))]="$i"
  fi
done

echo "Duplicate Digits Numbers are:"
echo ${arr[@]}
