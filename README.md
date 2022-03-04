# dotfiles

The goal of this project is to make getting started with a new macOS machine easy through automation and configuration. Every script contained here is designed to be as **idempotent** as possible – whenever your preferences evolve, you can simply update this project and rerun the installer.

## Prerequisites

Before running the installer, consider verifying that the following steps have been completed:

- Sign in with your Apple ID on your Mac
- Update macOS to the latest version on the App Store
- Install Xcode from the App Store, open it, and accept the license agreement
- Install macOS Command Line Tools by running `xcode-select --install`
- Install [Homebrew](https://brew.sh)

## Configure SSH & Git

You'll need to generate a new SSH keypair for your machine if one doesn't exist already:

- This [GitHub Help article](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) can walk you through the process
- Copy any other SSH keys to `~/.ssh` and make sure they're set to `600`

Then, configure your default git credentials:

```bash
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```

## Download

Since I generally have this dotfiles project synced to my iCloud Drive, it is usually instantly available on my new machine after I sign in with my Apple ID.

You can also clone this repo from GitHub via SSH. If you don't want to keep this project synced with iCloud Drive, I'd suggest using your home directory (`~`):

```bash
git clone git@github.com:syhchen/dotfiles.git
```

## Install

Run `bootstrap.sh` to install. The scripts in this project are written for `bash` but the default shell in macOS is now `zsh`, so you will first need to give your shell executable permissions:

```zsh
chmod +x bootstrap.sh
./bootstrap.sh
```

## Manual Setup

Not every aspect of setting up a new machine is practical to automate, though some of the manual setup outlined below might be candidates for automation in the future.

- Configure applications:
    - **Rectangle**
    - **Google Drive**
    - **1Password**

- [Change the behavior of the modifier keys on Mac](https://support.apple.com/en-by/guide/mac-help/mchlp1011/mac)
- [Write in another language on your Mac](https://support.apple.com/lv-lv/guide/mac-help/mchlp1406/mac)
- [Customize the Finder toolbars on Mac](https://support.apple.com/en-by/guide/mac-help/mchlp3011/mac)
- [Add and customize widgets in Notification Center on Mac](https://support.apple.com/lv-lv/guide/mac-help/mchl52be5da5/mac)

## Resources

- https://dotfiles.github.io