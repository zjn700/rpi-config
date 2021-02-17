#!/bin/bash 

echo "starting..."
d=`date +%Y-%m-%d`
t=`date +%R`
t="${t//:}"
d=$d-$t
echo $d
cd ~/dev/config
set +e  # Grep succeeds with nonzero exit codes to show results.
echo $?
git status | grep 'modified\|Untracked'
if [ $? -eq 0 ]
then
    set -e
    git add .
    git commit -am "updated on - $(date)"
    git push
else
    set -e
    echo "No changes since last run"
fi
