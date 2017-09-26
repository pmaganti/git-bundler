#!/usr/bin/env bash
#Reading the git remote repo url
echo -n 'Remote repo url: '
read gitrepo

#Cloning the git remote repo to a folder
echo -n 'Project folder: '
read projectfolder

mkdir $projectfolder && cd $projectfolder && git clone $gitrepo . &&
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
git branch --track ${branch#remotes/origin/} $branch || git branch
done && git bundle create ../bundles/$projectfolder.bundle --all && git bundle verify ../bundles/$projectfolder.bundle && echo "Done $projectfolder"
