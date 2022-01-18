#!/usr/bin/bash
set -e

message=$1

cp ~/.config/starship.toml ./
cp ~/.config/nvim/init.vim ./

git add .
git status
if [ message != '' ]
then
    git commit -m $1
    git push --set-upstream origin main
fi

