#!/bin/bash -x
declare -A storeResult

echo "Enter a value of a"
read a
echo "Enter a value of b"
read b
echo "Enter a value of c"
read c

operation1=$(($(($a+$b))*$c))
storeResult[1]=$operation1

operation2=$(($(($a*$b))+$c))
storeResult[2]=$operation2

operation3=$(($(($c+$a))/$b))
storeResult[3]=$operation3

operation4=$(($(($a%$b))+$c))
storeResult[4]=$operation4

for ((i=0;i<4;i++))
do
   index=$(($i+1))
	operationArray[(($i))]=${storeResult[$index]}
done
echo "operation value in array is : ${operationArray[@]}"

for ((j=0;j<4;j++))
do
	for ((k=(($j+1));k<4;k++))
	do
		if (( operationArray[$j] < operationArray[$k] ))
      then
			tempstore=${operationArray[$j]}
			operationArray[$j]=${operationArray[$k]}
         operationArray[$k]=$tempstore
     	fi
   done
done

echo "After sorting in descending order Computation result is : ${operationArray[@]} "

for ((j=0;j<4;j++))
do
	for ((k=(($j+1));k<4;k++))
	do
		if(( operationArray[$j] > operationArray[$k] ))
      then
			tempstore=${operationArray[$j]}
			operationArray[$j]=${operationArray[$k]}
			operationArray[$k]=$tempstore
		fi
	done
done

echo "After sorting in Ascending order computation result is : ${operationArray[@]}"
