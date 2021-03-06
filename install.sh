#!/usr/bin/env bash

set -ex

dotfiles_dir=~/dotfiles

if [[ "$SPIN" ]]; then
  sudo chsh -s /bin/bash spin
fi

ln -sf "${dotfiles_dir}/.inputrc" ~/.inputrc
ln -sf "${dotfiles_dir}/bash/.bash_profile" ~/.bash_profile
ln -sf "${dotfiles_dir}/bash/.bashrc" ~/.bashrc

if [[ ! -d ~/.bash_it ]]; then
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh --append-to-config
fi

if ! grep --quiet "path=${dotfiles_dir}/gitconfig" "~/.gitconfig"; then
cat << EOF >> ~/.gitconfig
[include]
  path=${dotfiles_dir}/gitconfig
EOF
fi
