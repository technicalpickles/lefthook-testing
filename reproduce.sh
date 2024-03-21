#!/usr/bin/env bash

set -x

# make any change and stage it
echo "#" >> lefthook.yml
git add lefthook.yml

# make a change, but don't stage it
echo "problem" >> untracked.rb

git commit -m "should pass, but fails because of change in untracked.rb"


