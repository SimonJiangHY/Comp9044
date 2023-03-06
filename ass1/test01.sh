#!/bin/dash
PATH="$PATH:."
rm -rf .tigger

echo "----------add tests-----------"
echo "----------add errors----------"
echo "tigger-add must take more than 1 arguments"
echo "error 1:" 
tigger-add

echo ""
echo "tigger-add cant run before init"
echo "error 2:"
tigger-add a

echo "---------add examples---------"
echo "1. a success add should make the file in index and work be the same"
tigger-init > /dev/null
touch a b
echo hello > a
tigger-add a b

echo " file a in work:" 
cat a
echo " file a in index:"
cat .tigger/index/a

echo "2. if you add a non-exist file in work but exist in index then tigger-add will rm it from index"
rm b
echo "files in index"
ls .tigger/index/

echo "after tigger-add b when b not in work"
tigger-add b
ls .tigger/index/



