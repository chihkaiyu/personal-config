#!/bin/bash
set -ex

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install zsh tmux
brew install zsh
chsh -s /bin/zsh

# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

brew install tmux autojump tig exa
git clone git@github.com:DarrinTisdale/zsh-aliases-exa.git ~/.oh-my-zsh/custom/plugins/zsh-aliases-exa

# copy config
mkdir -p ~/.config/nvim
cp ./terminal/init.vim ~/.config/nvim/init.vim
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

# python venvs
mkdir -p ~/.local/bin ~/.local/venvs ~/.local/pythons/2.7 ~/.local/pythons/3.7
python3 -m venv ~/.local/venvs/pipenv
~/.local/venvs/pipenv/bin/pip install pipenv
ln -s ~/.local/venvs/pipenv/bin/pipenv ~/.local/bin
pipenv --version

git clone git://github.com/pyenv/pyenv.git ~/Documents/pyenv
sudo sh ~/Documents/pyenv/plugins/python-build/install.sh

python-build 2.7.17 ~/.local/pythons/2.7
ln -s ~/.local/pythons/2.7/bin/python2.7 ~/.local/bin

python-build 3.7.7 ~/.local/pythons/3.7
ln -s ~/.local/pythons/3.7/bin/python3.7 ~/.local/bin
