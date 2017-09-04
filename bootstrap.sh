#!/usr/bin/env bash

function makeItSo() {
	# change ownership of /usr/local to current user
	echo "Changing ownership of /usr/local to user ${USER}..."
	chown -R $USER:admin /usr/local
	# install Homebrew
	sh -a ./homebrew/install.sh
	# install Homebrew packages from Brewfile
	brew bundle
  # find all installers excluding homebrew and run them iteratively
  find . -path ./homebrew -prune -o -name install.sh | while read installer ; do sh -a "${installer}" ; done
}

# ask for the administrator password upfront
sudo -v
# keep alive by update existing `sudo` time stamp until install.sh has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# pull latest dotfiles from GitHub
git pull origin master;

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
