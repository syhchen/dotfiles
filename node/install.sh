#!/usr/bin/env bash

# address .config being owned by root, see https://github.com/npm/npm/issues/17946
echo "\033[1;32mChanging ownership of ~/.config to user ${USER}...\033[0m"
sudo chown -R $USER:admin ~/.config

echo "\033[1;32mInstalling n...\033[0m"

sudo npm install -g n
n lts

echo "\033[1;32mInstalling create-react-app...\033[0m"

npm install -g create-react-app

echo "\033[1;32mInstalling create-react-native-app...\033[0m"

npm install -g create-react-native-app

echo "\033[1;32mInstalling surge...\033[0m"
npm install -g surge