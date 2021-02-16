#!/bin/bash 

echo "starting..."
#echo `date %F`
#d=`date +%m-%d-%Y`
d=`date +%Y-%m-%d`
t=`date +%R`
t="${t//:}"
d=$d-$t
echo $d
cd ~/dev/config
#git status
set +e  # Grep succeeds with nonzero exit codes to show results.
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
