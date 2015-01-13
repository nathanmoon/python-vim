#!/bin/bash

sudo apt-get update
sudo apt-get install vim git

cp gitconfig ~/.gitconfig

sudo update-alternatives --set editor /usr/bin/vim.basic

echo -n "For git"
echo -n "Enter your name: "
read gitname
echo -n "Enter your email: "
read gitemail

cat << EOF >> ~/.gitconfig

[user]
    name = $gitname
    email = $gitemail

EOF

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp vimrc ~/.vimrc

vim +PluginInstall +qall

echo "autocmd VimEnter * AirlineTheme simple" >> ~/.vimrc
