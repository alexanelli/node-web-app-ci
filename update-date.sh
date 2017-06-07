#!/bin/bash

set -e # fail if any command/pipeline fails
set -x # print commands to the shell

#clone the web app
#echo the current date into the file date.txt
#commit the changes so concourse can push them

git clone web-app-repo updated-web-app-repo

echo `date +%Y-%m-%d` > date.txt

git config --global user.email "nobody@concourse.ci"
git config --global user.name "Concourse"

#note we don't need to do a git push here, as concourse's "put" does that
git add .
git commit -m "Bumped date"
