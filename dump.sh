#!/usr/bin/env bash

echo -n "Dump configs (y/n)?"
read configs
if echo "$configs" | grep -iq "^y" ;then
    cp ~/.zshrc .zshrc 
    cp ~/.gitconfig .gitconfig
    cp -R ~/.config/nvim .
    cp -R ~/.config/kitty .
    cp -R ~/.config/zellij .
else
  echo 'Skip dump installation.'
fi

