#!/usr/bin/env bash

set -ex

dotfiles_dir=~/dotfiles

sudo chsh -s /bin/bash

ln -sf ${dotfiles_dir}/.inputrc ~/.inputrc

if [[ ! -d ~/.bash_it ]]; then
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh
fi
