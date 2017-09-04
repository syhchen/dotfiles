# dotfiles

@scdevy does dotfiles. Inspired by several fantastic dotfiles projects on GitHub, including work by @mathiasbynens, @holman, and @anglinb.

## Installation

Clone the repo to `~/.dotfiles` and run `bootstrap.sh` to install:

```sh
git clone https://github.com/scdevy/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source ./bootstrap.sh
```

## TODO

- disable annoying iTerm2 prompt when quitting `defaults write com.googlecode.iterm2 PromptOnQuit -bool false`
- read node global installs from json, property for latest vs stable
- add color and formatting to prompts
- add file sync applications (Dropbox, GDrive) to Brewfile
