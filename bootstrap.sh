#!/usr/bin/env bash

function makeItSo() {
  # change ownership of /usr/local to current user
  echo -e "\033[1;32mChanging ownership of /usr/local to user ${USER}...\033[0m"
  sudo chown -R $USER:admin /usr/local

  # install Homebrew
  sh -a ./homebrew/install.sh

  # install Homebrew packages from Brewfile
  brew bundle

  # install .macos
  sh -a ./.macos

  # find all installers excluding Homebrew and run them iteratively
  find . -path ./homebrew -prune -o -name install.sh -print | while read installer ; do sh -a "${installer}" ; done

  # remove outdated versions from the cellar
  brew cleanup

  # run Adobe CC installer
  # if CC doesn't exist...
  if [ -d "/Applications/Adobe\ Creative\ Cloud" ]; then
    open -a /usr/local/Caskroom/adobe-creative-cloud/latest/Creative\ Cloud\ Installer.app
  fi

  echo -e "\033[1;31mDone! Note that some of these changes require a logout/restart to take effect.\033[0m"
}

# ask for the administrator password upfront
sudo -v

xcode-select --install

# keep alive by update existing sudo time stamp until install.sh has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [ "$1" == "--force" -o "$1" == "-f" ] ; then
  makeItSo
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]] ; then
    makeItSo
  fi
fi

unset makeItSo
