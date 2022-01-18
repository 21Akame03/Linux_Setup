#!/usr/bin/bash
set -e
message=$1

git add .
git status 
echo "Do you wish to continue? (y/n)"
read confirmation
if [ $confirmation = 'y' ] || [ $confirmation = 'Y' ]
then
    git commit -m $message
    git push
elif [ $confirmation = 'n' ] || [ confirmation = 'N']
then
    echo "All right, I will not commit nor push any changes. Please make sure to check your code before committing."
else
    echo "Please enter one of the 2 Options."
fi
