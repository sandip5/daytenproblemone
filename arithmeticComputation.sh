#!/bin/bash -x

declare -A  compute

read -p "Enter first input : " a 
read -p "Enter second input : " b
read -p "Enter third input : " c

computeOne=$(( $a + $b * $c ))
computeTwo=$(( $a * $b + $c ))
computeThree=$(( $c + $a / $b ))
computeFour=$(( $a % $b +$c ))

compute[uctwo]=$computeOne
compute[ucthree]=$computeTwo
compute[ucfour]=$computeThree
compute[ucfive]=$computeFour

echo ${compute[@]}

for count in "${compute[@]}";
do
	computeArray[((count++))]=$count
done

for descending in $( echo "${computeArray[@]}" | tr ' ' '\n' | sort -nr )
do
  echo $descending
done
