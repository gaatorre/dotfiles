#!/bin/bash

while read dst src; do
  echo "$HOME/$src --> $dst"
  src=$HOME/$src
  if [ -d "$src" ]; then
    cp -a -u $src/. $dst
  else
    cp -u $src $dst
  fi
done < $1

if [[ 'git status --porcelain' ]]; then
  git add -A
  git commit -m "AUTO BACKUP"
  git push origin master
fi
