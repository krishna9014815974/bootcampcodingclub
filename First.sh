#!/usr/local/bin/bash
echo "enter a"
read a
echo "enter b"
read b
echo "enter c"
read c
num1=$(( a + b * c )) 
num2=$(( a * b + c ))
num3=$(( c + a / b ))
num4=$(( a % b + c ))
echo "computed values are $num1 $num2 $num3 $num4"
declare -A dict
dict[key1]=$num1
dict[key2]=$num2
dict[key3]=$num3
dict[key4]=$num4
# declare -A dict
# dict[key1]=$num1
# dict+=( [key2]=$num2 [key3]=$num3 [key4]=$num4 )
echo " stored values in dictionary : first:${dict[key1]} second:${dict[key2]} third:${dict[key3]} fourth:${dict[key4]}"
arr=(${dict[key1]} ${dict[key2]} ${dict[key3]} ${dict[key4]}) 
# arr=($num1 $num2 $num3 $num4)
for ((i = 0; i<4; i++))
do
    
    for((j = 0; j<4-i-1; j++))  
    do

        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in ascending order :"
echo ${arr[*]}
for ((i = 0; i<4; i++))
do
    
    for((j = 0; j<4-i-1; j++))
    do

        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in descending order :"
echo ${arr[*]}

 
# echo "${dict[first]} ${dict[second]} ${dict[third]} ${dict[fourth]}" 


