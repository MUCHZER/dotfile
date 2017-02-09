#!/bin/bash

echo 'Installing packages...'
### packages install
sudo pacman -Syu git vim vlc yaourt firefox nodejs npm zsh
yaourt -S yarn antigen-git oh-my-zsh-git visual-studio-code sublime-text-dev spotify deluge

echo 'Configurating vim&zsh'
### Config setup

echo 'Backup creation...'
mkdir $HOME/.defaultconf
mv $HOME/.vimrc $HOME/.defaultconf/.vimrc
mv $HOME/.zshrc $HOME/.defaultconf/.zshrc

echo 'Downloading configs'
wget -qnc https://raw.githubusercontent.com/MUCHZER/dotfile/master/vimrc
wget -qnc https://raw.githubusercontent.com/MUCHZER/dotfile/master/zshrc
echo 'Downloaded!'
echo 'Copying configs'
cp zshrc $HOME/.zshrc
cp vimrc $HOME/.vimrc
rm vimrc
rm zshrc

echo 'Yarn global config'
mkdir $HOME/.yarn-global
yarn config set prefix $HOME/.yarn-global
echo "export PATH="$PATH:yarn global bin"" >> $HOME/.zshrc
echo "export PATH="$PATH:yarn global bin"" >> $HOME/.bashrc
echo "Yarn ready!"

echo "Reloading bash"
source $HOME/.zshrc

echo 'Finished!'
exit 0
