#!/bin/zsh
while read line
do
  brew install "$line"
done < brew_packages.txt
