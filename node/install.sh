#!/usr/bin/env bash

echo "\033[1;32mInstalling n...\033[0m"

sudo npm install -g n
n stable

echo "\033[1;32mInstalling create-react-app...\033[0m"

sudo npm install -g create-react-app
sudo npm install -g preact-cli
sudo npm install -g surge