#!/bin/dash

echo "test00.sh mainly test subset1 : Input Files"
echo "---------------------------------------------"

seq 1 5 > tmp1.txt
seq 1 10 > tmp2.txt

echo "sX[1]X8Xg" > tmp_command
echo "/8/p;/8/p" >> tmp_command
cat tmp_command

echo "test case 1:"
echo "python3 -s -S slippy -f tmp_command tmp1.txt tmp2.txt"
my_result1=$(python3 -s -S slippy -f tmp_command tmp1.txt tmp2.txt)
true_1=$(2041 slippy -f tmp_command tmp1.txt tmp2.txt)
echo "my output:"
echo "$my_result1"
echo "expected output:"
echo "$true_1"

rm tmp_command
if test "$my_result1"="$true_1":
then
    echo "test_1 passed"
else
    echo "test_1 failed"
    exit 1 
fi 