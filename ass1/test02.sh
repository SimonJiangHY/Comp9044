#!/bin/dash
PATH="$PATH:."
rm -rf .tigger

echo "-----------test commit|log|show---------"

echo "-----------commit errors--------------"
echo "tigger-commit with wrong arguments"
echo "error 1:"
tigger-commit

echo ""
echo "tigger-commit before init"
echo "error 2:"
tigger-commit -m aaa


echo "\n---------commit examples------------"
tigger-init
touch a b
echo hello > a
echo world > b
tigger-add a
echo "\nshould print a success commit:" 
tigger-commit -m first
echo "\ncheck log:"
tigger-log
echo "\ncheck file in index:"
tigger-show :a
echo "\ncheck file in repo:"
tigger-show 0:a

echo "\ncommit with same file before:"
tigger-commit -m second

echo "\ncommit with new file"
tigger-add a b
echo "should print a success commit:" 
tigger-commit -m second
echo "\ncheck log:"
tigger-log
echo "\ncheck file in index:"
tigger-show :b
echo "\ncheck file in repo:"
tigger-show 1:b




