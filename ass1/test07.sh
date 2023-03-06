#!/bin/dash

PATH="$PATH:."
rm -rf .tigger

echo "------------test merge----------"
echo "------------merge error---------"
tigger-init
echo 'commit 0' > a
tigger-add a
tigger-commit -m commit-0
tigger-branch new
tigger-checkout new
echo 'commit 1' > a
tigger-commit -a -m commit-1
tigger-checkout master
echo 'commit 2' > a
tigger-commit -a -m commit-2
echo "\ncase1 : should print empty message:"
tigger-merge new
echo "\ncase2 : merge a unknown branch:"
tigger-merge haha -m message
echo "\ncase3 : can not merge case:"
tigger-merge new -m -message
