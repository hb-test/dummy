set -x
#!/bin/bash
echo "Enter the number"
read word
declare -a a   
i=0

for ((i=0; i<${#word}; i++))
do
	array[i]="${word:$i:1}"
done

declare -p array
j=$(( ${#array[@]} - 1 ))
echo $j
k=0

half=$(( j / 2 ))
echo $half
i=0
while [[ $k -le $half ]]
do
	echo "${array[$i]}"
	if [[ "${array[$i]}" = "${array[$j]}" ]]
	then
		i=$(( $i + 1 ))
		j=$(( $j - 1 ))
		k=$(( $k + 1 ))
		continue
	else
		echo "Not a palindrome"
		exit
	fi
	
done
echo "$word is a palindrome"
