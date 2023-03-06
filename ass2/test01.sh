#!/bin/dash

echo "test00.sh mainly test subset0 : p command"
echo "---------------------------------------------"

echo "test case 1:"
echo "seq 1 20 | python3 -s -S slippy -n '/3/p'"
my_result1=$(seq 1 20 | python3 -s -S slippy -n '/3/p')
true_1=$(seq 1 20 | 2041 slippy -n '/3/p')
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

