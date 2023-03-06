#!/bin/dash
PATH="$PATH:."
rm -rf .tigger


# basic test for inital and simple add commit without commit
echo "-----------init  tests--------------"
tigger-init 
# wrong argument 
echo "-----------init errors--------------"
echo "tigger-int must take 0 arguments"
echo "error 1:"
tigger-init hello
# should successfully creat repo
echo ""
echo "duplicate running will print error"
echo "error 2:"
# should print error
tigger-init 

