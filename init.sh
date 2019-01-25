#!/bin/bash
set -ex

# install zsh
sudo apt-get install -y zsh

# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# copy config
cp ./terminal/tmux.conf ~/.tmux.conf
cp ./terminal/zshrc ~/.zshrc
cp ./terminal/vimrc ~/.vimrc

# add git alias
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# change git config
git config --global user.name "Chih Kai Yu"
git config --global user.email "kai.chihkaiyu@gmail.com"
