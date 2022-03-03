#!/bin/bash

function useSudo() {
  # ask for the administrator password upfront
  sudo -v

  # keep alive by update existing sudo time stamp until install.sh has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
}

function makeItSo() {
  # execute .mkdir
  echo -e "\033[1;32mExecuting .mkdir...\033[0m"
  source ./.mkdir

  # use sudo
  useSudo

  # install Homebrew
  source ./homebrew/install.sh

  # install Homebrew packages from Brewfile
  brew bundle

  # remove old versions of formulae from the Homebrew Cellar
  brew cleanup

  # find all installers (excluding Homebrew) and run them iteratively
  find . -path ./homebrew -prune -o -name install.sh -print | while read installer ; do source "${installer}" ; done

  # execulte .macos
  echo -e "\033[1;32mExecuting .macos...\033[0m"
  source ./.macos

  echo -e "\033[1;31mDone! Note that some of these changes require a logout/restart to take effect.\033[0m"
}

if [ "$1" == "--force" -o "$1" == "-f" ] ; then
  makeItSo
else
  read -p "Are you sure you want to run bootstrap.sh? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]] ; then
    makeItSo
  fi
fi

unset makeItSo
