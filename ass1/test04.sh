#!/bin/dash

PATH="$PATH:."
rm -rf .tigger
echo '-------------test success rm | status -------------'
echo '-------------test status without rm----------------'
tigger-init 
touch a b c d e f g 
tigger-add a b c d
tigger-commit -m first 
echo 1 > b 
tigger-add b 
echo 1 > c 
echo 1 > d 
tigger-add d 
echo 11 > d 
tigger-add e f 
echo 1 > f 

echo 'should print 7 different status:'
tigger-status

echo "-------------test rm status----------------"
rm a b c d e f g 
rm -rf .tigger
tigger-init 
touch a b
tigger-add a
tigger-commit -m 0
tigger-rm a 
tigger-add b
rm b 
echo "should print 2 different status"
tigger-status
