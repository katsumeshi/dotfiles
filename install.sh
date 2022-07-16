#!/bin/sh

echo "Installing Brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew packages..."
brew bundle --file ./Brewfile

echo "Cloning dotfiles..."
git clone git@github.com:katsumeshi/dotfiles.git ~/dotfiles

LIBRARY_DIR="$HOME/Library"
PREFERENCE_DIR="$LIBRARY_DIR/Preferences"

echo "Setup VSCode..."
VSCODE_PREFS_DIR="$LIBRARY_DIR/Application Support/Code/User"
mkdir -p $VSCODE_PREFS_DIR

echo "Symlinking dotfiles..."
ln -sf ~/dotfiles/config ~/.config
ln -sf ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/vscode/settings.json "$VSCODE_PREFS_DIR/settings.json"
ln -sf ~/dotfiles/iterm2/com.googlecode.iterm2.plist "$PREFERENCE_DIR/com.googlecode.iterm2.plist"