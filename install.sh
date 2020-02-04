#!/usr/bin/bash

# Utilities
pacman -Sy
pacman -S --noconfirm git neovim ranger python python-pip
pip install percol

# NVM
touch ~/.bashrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
source ~/.bashrc
nvm install 10.16.3

# General
mkdir ~/scripts
mkdir ~/projects
echo 'export PS1="\[\e[32m\]\u\[\e[m\]\[\e[32m\]\\$\[\e[m\]\[\e[32m\]\W\[\e[m\] "' >> ~/.bashrc
curl -L https://raw.githubusercontent.com/0000marcell/scripts/master/install-scripts.sh | bash
