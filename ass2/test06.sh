#!/bin/dash

echo "test00.sh mainly test subset1 : -f command line option"
echo "---------------------------------------------"

echo "1,3sXyXnoX" > tmp_command
echo "s/y/yes/;5q" >> tmp_command
cat tmp_command

echo "test case 1:"
echo "yes | python3 -s -S slippy -f tmp_command"
my_result1=$(yes | python3 -s -S slippy -f tmp_command)
true_1=$(yes | 2041 slippy -f tmp_command)
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