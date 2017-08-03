#!/bin/bash


echo "Begin Script"
echo "Update and Upgrade"
cd ~/
sudo apt-get update && sudo apt-get upgrade -y
echo "Install git and byobu"
sudo apt-get install git byobu -y
sudo apt-get install python3-dev python3-pip vim -y
sudo apt-get install htop -y
sudo pip3 install virtualenv
sudo apt-get install exuberant-ctags flake8 -y


echo "Setting up Git"
# Git config
NAME=''
EMAIL=me@me.com

git config --global user.name "$NAME"
git config --global user.email $EMAIL
git config --global core.editor vim

echo "Cloning terminal setup"
git clone https://github.com/merlinsbeard/terminal-setup.git
echo "Vim Setup"
cd terminal-setup
cp vim-plug.vimrc ~/.vimrc
echo "Tmux Setup"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux.conf ~/.tmux.conf
cd ~/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

