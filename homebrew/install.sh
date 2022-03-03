#!/bin/bash

echo -e "\033[1;32mUpdating/Upgrading Homebrew...\033[0m"

brew update
brew upgrade

echo -e "\033[1;32mInstalling Homebrew Bundle...\033[0m"

if ! brew tap | grep -q "homebrew/bundle" ; then
  brew tap homebrew/bundle
else
  echo -e "\033[1mHomebrew Bundle is already installed.\033[0m"
fi
