#!/bin/dash

PATH="$PATH:."
echo "-------A success three-way-merge-----------"

rm -rf .tigger
tigger-init
echo a > a 
echo b > b
echo c > c 
echo d > d 
echo e > e 
echo f > f
tigger-add a b 
tigger-commit -m commit0
tigger-add c d
tigger-commit -m commit1
tigger-branch new
tigger-checkout new
echo "9044" > a 
tigger-commit -a -m commit2
tigger-checkout master
echo "9044" > c
tigger-commit -a -m commit3
tigger-checkout new
echo "ass1" > b 
tigger-add b e
tigger-commit -m commit4
tigger-checkout master
echo "ass1" > d 
tigger-add d f
tigger-commit -m commit5
tigger-checkout new
tigger-merge master -m merge1
tigger-log
tigger-status
