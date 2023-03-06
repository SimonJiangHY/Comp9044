#!/bin/dash

PATH="$PATH:."
rm -rf .tigger

echo "------------test checkout----------"
echo "----checkout error------"
tigger-init
echo hello > a 
tigger-add a 
tigger-commit -m first
tigger-branch new

echo "\ncase1: unknown branch"
tigger-checkout haha

echo "\ncase2: overwritten"
echo world > b
tigger-add b
tigger-commit -m second
tigger-checkout new
echo new > b
tigger-checkout master
 
