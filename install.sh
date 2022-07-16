#!/bin/sh

echo "Installing Brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew packages..."
brew bundle --file ./Brewfile

echo "Cloning dotfiles..."
git clone git@github.com:katsumeshi/dotfiles.git ~/dotfiles

echo "Symlinking dotfiles..."
ln -sf ~/dotfiles/.config ~/.config
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.zshrc ~/.zshrc
