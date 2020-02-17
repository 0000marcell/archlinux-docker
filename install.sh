#!/usr/bin/bash

# Utilities
pacman -Sy
pacman -S --noconfirm git neovim ranger python python-pip openssh vim
pip install percol

# NVM
touch ~/.bashrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
echo "cd /root/docker-volume/projects" >> ~/.bashrc
echo "ln -s /root/docker-volume/.ssh /root/.ssh 2> /dev/null" >> ~/.bashrc
echo "source /root/docker-volume/.env" >> ~/.bashrc

source ~/.bashrc
nvm install 12.13.1

# Git flow
curl -OL https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh
chmod +x gitflow-installer.sh
./gitflow-installer.sh

# General
mkdir ~/scripts
mkdir ~/docker-volume/projects
echo 'export PS1="\[\e[32m\]\u\[\e[m\]\[\e[32m\]\\$\[\e[m\]\[\e[32m\]\W\[\e[m\] "' >> ~/.bashrc
curl -L https://raw.githubusercontent.com/0000marcell/scripts/master/install-scripts.sh | bash
