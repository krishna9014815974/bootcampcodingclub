#!/usr/local/bin/bash
declare -A singlet
singlet[H]=0
singlet[T]=0
for ((i = 0; i<1000; i++))
do
    r=$(( $RANDOM % 2 )) 
    if [ $r -eq 0 ]    #taking 0 as heads
    then
       ((singlet[H]++))
    else               #taking 1 as tails
       ((singlet[T]++))
    fi
done
echo "the frequencies are H:${singlet[H]} T:${singlet[T]}"
declare -A singletpercent #to store the percentages in dictionary
singletarray=()  #to store percentages in array to compute winning combination  
for i in "${!singlet[@]}"
do
    frequency=${singlet[$i]}
    singletpercent[$i]=$(( 100 * $frequency/1000 ))
    percent=${singletpercent[$i]}
    singletarray+=($percent)
done
echo "the percentages are H:${singletpercent[H]}  T: ${singletpercent[T]}" 
#computing the winning combination i.e. finding max in the array
max=0
for i in ${singletarray[@]}
do
     if [[ $i -gt $max ]]
     then
        max=$i
     fi
done
echo "highest percentage is $max"
#checking which combination has that max percentage
for i in "${!singletpercent[@]}"
do
    percent=${singletpercent[$i]}
    if [[ $max -eq $percent ]]
    then 
        echo "the winning combination is $i with percenatge of $percent"
        break
    fi
done