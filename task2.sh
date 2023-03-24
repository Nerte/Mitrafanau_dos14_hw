#!/bin/bash
arr1=("foo" "bar" "blah" "test" "123" "smad" "dasd" "foo")
arr2=("bar" "blah" "test" "1223" "ss" "foo" "dfd")

echo "${arr1[@]}"
echo "${arr2[@]}"

for i in "${arr1[@]}"; do 
	for y in "${arr2[@]}"; do 
	if [ "$i" == "$y" ];then 
		arr3[${#arr3[@]}]=$i
	fi
	done 
done

a=${arr3[*]}
b=$(echo "$a" | xargs -n1 | sort -u | xargs)
echo "$b"