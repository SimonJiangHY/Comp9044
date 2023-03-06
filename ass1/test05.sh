#!/bin/dash

PATH="$PATH:."
rm -rf .tigger

echo "---------------test branch----------------"
echo "---------------branch errors--------------"

echo "\ncase1: run before init"
tigger-branch

echo "\ncase2: make a branch before 1st commit"
tigger-init
tigger-branch new
echo "\ncase2: make a branch already exist"
touch a
tigger-add a
tigger-commit -m first
tigger-branch master

echo "\ncase3: rm a branch dont exist"
tigger-branch newbranch
tigger-branch -d haha

echo "\ncase4: can not rm master"
tigger-branch -d master

echo "\ncase5: can not rm unmerged branch"
touch b 
tigger-add b 
tigger-commit -m 'new commit in master'
echo "show log in master:"
tigger-log
tigger-checkout newbranch
touch c
tigger-add c 
tigger-commit -m 'new commit in newbranch'
echo "show log in newbranch"
tigger-log
tigger-checkout master
tigger-branch -d newbranch