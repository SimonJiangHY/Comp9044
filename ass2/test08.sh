#!/bin/dash

echo "test00.sh mainly test subset2 : command line option"
echo "---------------------------------------------"

echo "test case 1:"
echo "python3 -s -S slippy -i '1,5p;/2/,/6/p;2,/.5/d;s/./haha/;1,10p' tmp.txt | cat tmp.txt"
seq 1 10 > tmp.txt | python3 -s -S slippy -i '1,5p;/2/,/6/p;2,/.5/d;s/./haha/;1,10p' tmp.txt
my_result1=$(cat tmp.txt)
seq 1 10 > tmp.txt | 2041 slippy -i '1,5p;/2/,/6/p;2,/.5/d;s/./haha/;1,10p' tmp.txt
true_1=$(cat tmp.txt)
echo "my output:"
echo "$my_result1"
echo "expected output:"
echo "$true_1"
rm tmp.txt
if test "$my_result1"="$true_1":
then
    echo "test_1 passed"
else
    echo "test_1 failed"
    exit 1 
fi 