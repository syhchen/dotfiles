#!/usr/bin/env bash

echo "Installing Homebrew..."
if test ! $(which brew) ; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Homebrew already installed."
fi
echo "Updating Homebrew..."
brew update
echo "Upgrading Homebrew packages..."
brew upgrade
echo "Installing Homebrew Bundle..."
if brew tap | grep -q "homebrew/bundle" ; then
    echo "Homebrew Bundle is already installed."
else
    brew tap homebrew/bundle
fi
exit 0