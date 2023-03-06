#!/bin/dash
PATH="$PATH:."
rm -rf .tigger

echo "-----------test rm---------"
echo "-----------rm errors--------------"
echo "\ncase 1: file is not in the tigger repository"
tigger-init >/dev/null
touch a
tigger-rm a

echo "\ncase 2: file in the repository is different to the working file"
echo "but this case can delete file in index by --cached"
tigger-add a 
tigger-commit -m first >/dev/null
echo hello > a 
tigger-rm a 
tigger-rm --cached a 

echo "\ncase 3: file in index is different to both the working file and the repository"
tigger-add a
echo world > a 
tigger-rm a

echo "\ncase 4: file has staged changes in the index"
echo "but this case can delete file in index by --cached"
tigger-add a 
tigger-rm a 
tigger-rm --cached a 




