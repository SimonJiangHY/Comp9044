#!/bin/dash

echo "test00.sh mainly test subset1 : multi command"
echo "---------------------------------------------"

echo "test case 1:"
echo "seq 1 50 | python3 -s -S slippy '1,5p;/2/,/6/p;2,/.5/d;s/./haha/;1,10p;15q'"
my_result1=$(seq 1 50 | python3 -s -S slippy '1,5p;/2/,/6/p;2,/.5/d;s/./haha/;1,10p;15q')
true_1=$(seq 1 50 | 2041 slippy '1,5p;/2/,/6/p;2,/.5/d;s/./haha/;1,10p;15q')
echo "my output:"
echo "$my_result1"
echo "expected output:"
echo "$true_1"
if test "$my_result1"="$true_1":
then
    echo "test_1 passed"
else
    echo "test_1 failed"
    exit 1 
fi 
