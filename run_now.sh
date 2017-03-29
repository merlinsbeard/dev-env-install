cd ~/
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install git nginx byobu -y
sudo apt-get install python3-dev python3-pip vim -y
sudo apt-get install htop -y
sudo pip3 install virtualenv
sudo apt-get install exuberant-ctags flake8 -y


# Git config
NAME=''
EMAIL=me@me.com

git config --global user.name "$NAME"
git config --global user.email $EMAIL
git config --global core.editor vim

git clone https://github.com/merlinsbeard/vimrc.git
cd vimrc
cp vim-plug.vimrc ~/.vimrc
cd ~/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
