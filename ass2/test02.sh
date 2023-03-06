#!/bin/dash

echo "test00.sh mainly test subset0 : d command"
echo "---------------------------------------------"

echo "test case 1:"
echo "seq 1 20 | python3 -s -S slippy '/[2345]/d'"
my_result1=$(seq 1 20 | python3 -s -S slippy '/[2345]/d')
true_1=$(seq 1 20 | 2041 slippy '/[2345]/d')
echo "my output:"
echo "$my_result1"
echo "expected output:"
echo "$true_1"
if test "$my_result1" = "$true_1"
then
    echo "test_1 passed"
else
    echo "test_1 failed"
    exit 1 
fi 
