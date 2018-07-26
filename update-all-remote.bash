#!/bin/bash
# run this from your workspace, which contains all your Git repos to change from whatever remote is configured, to the one in your git config
CUR_DIR=$(pwd)
echo "\nUpdating remotes for all repositories...\n"
for i in $(find . -mindepth 1 -maxdepth 1 -type d); do
    printf "\nIn Folder: $i";
    cd "$i";
    printf "\n"
    THIS_REMOTES="$(git remote -v)"
    arr=($THIS_REMOTES)
    OLD_REMOTE="${arr[1]}";
    NEW_REMOTE="${OLD_REMOTE/git.old.net/git.new.org}"
    printf "New remote: $NEW_REMOTE"
    printf "\n"
    git remote set-url origin "$NEW_REMOTE"
    cd $CUR_DIR
done
printf "\nComplete!\n"