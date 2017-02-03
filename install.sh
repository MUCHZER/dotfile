#!/bin/bash

echo 'Installing packages...'
### packages install
sudo pacman -Syu vim zsh oh-my-zsh-git antigen-git firefox git visual-studio-code deluge spotify vlc

echo 'Configurating vim&zsh'
### Config setup
mkdir $HOME/.defaultconf

mv $HOME/.vimrc $HOME/.defaultconf/.vimrc
cp vimrc $HOME/.vimrc

mv $HOME/.zshrc $HOME/.defaultconf/.zshrc
cp zshrc $HOME/.zshrc

echo 'Finished!'
exit 0
