#!/bin/bash 

echo "starting..."
d=`date +%Y-%m-%d`
t=`date +%R`
t="${t//:}"
d=$d-$t
echo $d
cd ~/dev/config
set +e  # Grep succeeds with nonzero exit codes to show results.
git status | grep 'modified\|Untracked'
# $? returns the exit value of the last executed command.
if [ $? -eq 0 ]
then
  # -e  Exit immediately if a command exits with a non-zero status
    set -e
    git add .
    git commit -am "updated on - $(date)"
    git push
else
    set -e
    echo "No changes since last run"
fi
