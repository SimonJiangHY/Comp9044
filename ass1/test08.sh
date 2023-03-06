#!/bin/dash


PATH="$PATH:."
echo "-------A success fast-forward merge-----------"
rm -rf .tigger
tigger-init
touch a b c 
tigger-add a b c 
tigger-commit -m commit0
tigger-rm --cached a 
echo "hello" > a 
tigger-add a 
tigger-commit -m commit1 
tigger-branch new
tigger-checkout new
echo "9044" > a 
echo "ass1" > b
echo "tigger" > c
tigger-commit -a -m commit2
echo "test all passed" > d
tigger-add d 
tigger-commit -m commit3
tigger-checkout master
tigger-merge new -m merge1
tigger-log
tigger-status



