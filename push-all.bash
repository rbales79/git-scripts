#!/bin/bash
# run this from your workspace, which contains all your Git repos to push all changes to master
CUR_DIR=$(pwd)
echo "\npushing local updates for all repositories...\n"
for i in $(find . -mindepth 1 -maxdepth 1 -type d); do
    printf "\nIn Folder: $i";
    cd "$i";
    printf "\n"
    git add . && git commit -m "incremental" && git push
    cd $CUR_DIR
done
printf "\nComplete!\n"



