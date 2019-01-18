#!/usr/bin/env bash

# address .config being owned by root, see https://github.com/npm/npm/issues/17946
echo "\033[1;32mChanging ownership of ~/.config to user ${USER}...\033[0m"
sudo chown -R $USER:admin ~/.config

echo "\033[1;32mInstalling n...\033[0m"

sudo npm install -g n
n lts
