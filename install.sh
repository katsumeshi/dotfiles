#!/bin/sh

# Install Rosseta2
if [[ "$(uname -m)" == arm64 ]]; then
  softwareupdate --install-rosetta --agree-to-license
fi

echo "Installing Brew..."
which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Cloning dotfiles..."
git clone git@github.com:katsumeshi/dotfiles.git ~/dotfiles

echo "Installing brew packages..."
brew bundle --file ./Brewfile


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