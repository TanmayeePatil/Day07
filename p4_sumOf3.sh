#!/bin/bash 

read -p "How many numbers you want to enter:" count

i=1
flag="NO"
sum=0

for i in `seq $count`
do
  read -p "Enter $i element:" arr[$i]
  (( i++ ))
done

echo "You entered below elements:"
echo ${arr[@]}

arrLenght=${#arr[@]}
echo "Array Lenght: $arrLenght"

a=$(( $arrLenght-2 ))
b=$(( $arrLenght-1 ))

for(( i=0;i<$a;i++))
do
  for (( j=1;j<$b;j++))
  do
	for (( k=2;k<$arrLenght;k++))
	do
           sum=$(( arr[$i]+arr[$j]+arr[$k] ))
   	   if [ $sum == 0 ];then
		  echo "${arr[$i]}  ${arr[$j]}  ${arr[$k]} = $sum"
                  flag="YES"
           fi
	done
    done
done

if [ $flag == "NO" ];then
 echo "Entry does not exist"
fi


