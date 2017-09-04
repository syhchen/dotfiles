#!/usr/bin/env bash

echo "Installing Homebrew..."

if test ! $(which brew) ; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed."
fi
brew update
brew upgrade

echo "Installing Homebrew Bundle..."

if ! brew tap | grep -q "homebrew/bundle" ; then
  brew tap homebrew/bundle
else
  echo "Homebrew Bundle is already installed."
fi
