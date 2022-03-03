#!/usr/bin/env bash

echo "\033[1;32mChanging ownership of /usr/local/n to user ${USER}...\033[0m"
sudo mkdir -p /usr/local/n
sudo chown -R $USER:admin /usr/local/n

echo "\033[1;32mInstalling n...\033[0m"

sudo npm install -g n
n lts
