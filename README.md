# dotfiles

The goal of this project is to make getting started with a new macOS machine easy through automation and configuration. Every script contained here is designed to be as **idempotent** as possible – whenever your preferences evolve, you can simply update this project and rerun the installer.

## Prerequisites

Before running the installer, consider verifying that the following steps have been completed:

- Sign in with your Apple ID on your Mac
- Update macOS to the latest version on the App Store
- Install Xcode from the App Store, open it, and accept the license agreement
- Install macOS Command Line Tools by running `xcode-select --install`

## Download (SSH)

Since I generally have this dotfiles project synced to my iCloud Drive, it is usually instantly available on my new machine after I sign in with my Apple ID. You can also clone this repo from GitHub via SSH.

First, you'll need to generate a new SSH keypair for your machine if one doesn't exist already:

- This [GitHub Help article](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) can walk you through the process
- Copy any other SSH keys to `~/.ssh` and make sure they're set to `600`

Then, configure your default git credentials:

```bash
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```

Finally, clone the repo to your machine. I'd suggest using your home directory (`~`) or iCloud Drive:

```bash
git clone git@github.com:syhchen/dotfiles.git
```

## Installation

Run `bootstrap.sh` to install:

```bash
source ./bootstrap.sh
```

## Manual Setup

Not every aspect of setting up a new machine is practical to automate. Some of the manual setup outlined below might be candidates for automation in the future.

### Terminal

Enable "New Terminal Tab at Folder":

1. Keyboard > Shortcuts > Services.
1. Check the box for "New Terminal Tab at Folder".

### iTunes

Stop auto-syncing in iTunes when connecting an iPhone, iPad, or iPod:

1. iTunes > Preferences > Devices.
1. Check the box for "Prevent iPods, iPhones and iPads from syncing automatically".

## TODOs

- Finish VSCode config.
- Add guidlines for home directory config (~/Developer, ~/Designer, etc).
- For VS Code, copy config to symlinked directory from original directory before deleting it.
