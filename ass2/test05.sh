#!/bin/dash

echo "test00.sh mainly test subset1 : s command"
echo "---------------------------------------------"

echo "test case 1:"
echo "yes | python3 -s -S slippy '1,3sXyXnoX;4q'"
my_result1=$(yes | python3 -s -S slippy '1,3sXyXnoX;4q')
true_1=$(yes | 2041 slippy '1,3sXyXnoX;4q')
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