#!/usr/bin/env bash

echo "\033[1;32mInstalling n...\033[0m"

sudo npm install -g n
n stable

echo "\033[1;32mInstalling create-react-app...\033[0m"

npm install -g create-inferno-app

echo "\033[1;32mInstalling surge...\033[0m"
npm install -g surge