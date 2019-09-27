set -x
echo "Read no. of Fib needed"
read NUM

prev_no=0
curr_no=1
i=0

while [ $i -lt $NUM ]
do
	fib=$(( $prev_no + $curr_no ))
	echo $fib >> list.txt
	prev_no=$curr_no
	curr_no=$fib
	i=$(( $i + 1 ))
done	

cat list.txt
