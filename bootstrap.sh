#!/bin/bash
# how to check OS: https://stackoverflow.com/a/17072017
if [ $(command -v brew) ]; then
    # Do something under Mac OS X platform        
    INSTALL_CMD="brew install"
elif [ $(command -v pacman)]; then
    INSTALL_CMD="sudo pacman -S --noconfirm"
fi

if [ -z $(command -v git) ]; then
  echo "Installing git"
  eval "$INSTALL_CMD git"
fi

if [ -z $(command -v ansible-playbook) ]; then
  echo "Installing ansible"
  eval "$INSTALL_CMD ansible"
fi

#BOOTSTRAP_DIR="$HOME/bootstrap"
#git clone https://github.com/phongngtuan/bootstrap.git $BOOTSTRAP_DIR

#DOTFILE_DIR="$HOME/.dot"
#if [ -d "$DOTFILE_DIR" ]; then
#  echo "Cloning dot file"
#  git clone https://github.com/phongngtuan/dot.git $DOTFILE_DIR
#fi
