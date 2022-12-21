#!/usr/bin/env bash

echo -n "Install configs (y/n)?"
read configs
if echo "$configs" | grep -iq "^y" ;then
    cp .zshrc ~/.zshrc
    cp .gitconfig ~/.gitconfig
    cp -R nvim ~/.config/
    cp -R kitty ~/.config/
else
  echo 'Skip configs installation.'
fi

echo -n "Install ohmyzsh (y/n)?"
read ohmyzsh
if echo "$ohmyzsh" | grep -iq "^y" ;then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo 'Skip ohmyzsh installation...'
fi

echo -n "Install Homebrew (y/n)?"
read homebrew
if echo "$homebrew" | grep -iq "^y" ;then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo 'Skip Homebrew installation...'
fi

echo -n "Install nvm (y/n)?"
read nvm
if echo "$nvm" | grep -iq "^y" ;then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
else
  echo 'Skip nvm installation.'
fi

echo "Install complete ..."

