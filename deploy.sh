#!/bin/bash

tmp=/tmp/tmp$$

git_dir=$tmp-git_dir
site_dir=$(pwd)/site
reponame=pcetsogtoo.github.com

function USAGE(){
cat << EOF

"USAGE: ./deploy "Git commit message"

EOF
exit 1
}

[ -z "$1" ] && USAGE 

message=$1

repo=git@github.com:pcetsogtoo/pcetsogtoo.github.com.git

mkdir -p $git_dir
cd $git_dir

git clone $repo
cd $reponame

git rm -r ./* # Wipe out current content

cp -rp $site_dir/* . # Copy entire generated static content so I can adjust deletion & insertion
git add .
git commit -m "$message" &&  git push

sudo rm -r $tmp-*
exit 0
