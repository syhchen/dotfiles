#!/usr/bin/env bash

echo "\033[1;32mInstalling Homebrew...\033[0m"

if test ! $(which brew) ; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "\033[1mHomebrew is already installed.\033[0m"
fi
brew update
brew upgrade

echo "\033[1;32mInstalling Homebrew Bundle...\033[0m"

if ! brew tap | grep -q "homebrew/bundle" ; then
  brew tap homebrew/bundle
else
  echo "\033[1mHomebrew Bundle is already installed.\033[0m"
fi
