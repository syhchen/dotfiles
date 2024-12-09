#!/bin/bash

FILE=~/.zshrc
INIT="eval \"\$(nodenv init -)\""
NODE=22.12.0

echo -e "\033[1;32mAdding nodenv initialization to $FILE...\033[0m"

if ! grep -qF "$INIT" $FILE; then
  echo $INIT | tee -a $FILE
fi

echo -e "\033[1;32mInstalling node v$NODE via nodenv...\033[0m"

nodenv install $NODE

echo -e "\033[1;32mUpdating global node to v$NODE via nodenv...\033[0m"

nodenv global $NODE
