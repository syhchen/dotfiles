#!/bin/bash

echo -e "\033[1;32mMake cache folder /usr/local/n then take ownership...\033[0m"
sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n

echo -e "\033[1;32mMake other required folders for n then take ownership...\033[0m"
sudo mkdir -p /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share

echo -e "\033[1;32mInstalling n...\033[0m"

npm install -g n
n lts
