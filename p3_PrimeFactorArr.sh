#!/bin/bash
\
read -p "Enter Number: " num

i=2
j=0
sumI=$(( $i*$i ))
printf "$num="

while [ $num -ge $sumI ]
do
   if [[ $rem -eq 0 ]];then
       arr[((j++))]="$i"
       num=$(( $num/$i ))  #divide by prime number
       rem=$(( $num%$i ))
   else
         i=$(( $i+1 ))
         rem=$(( $num%$i ))
   fi
done

arr[((j++))]=$num

echo "${arr[@]}" | sed 's/\s/\*/g'

