# #!/bin/sh
DOTFILES_PATH="$HOME/dotfiles"

# Install Rosseta2
if [[ "$(uname -m)" == arm64 ]]; then
  softwareupdate --install-rosetta --agree-to-license
fi

# Setup Homebrew
if [ -x "$(command -v brew)" ]; then
  brew update
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if [[ "$(uname -m)" == arm64 ]]; then # M1
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    echo "⚠️ You might reboot the machine... if brew is not found"
  elif [[ "$(uname -m)" == x86_64 ]]; then # Intel
    eval "$(/usr/local/bin/brew shellenv)"
  fi
fi


# Setup .dotfiles
if [ -d $DOTFILES_PATH ]; then
  pushd $DOTFILES_PATH; git pull; popd
else  
  git clone git@github.com:katsumeshi/dotfiles.git $DOTFILES_PATH
fi

# Brew
brew bundle --file $DOTFILES_PATH/Brewfile

if [ -x "$(command -v volta)" ]; then
  volta setup
fi

zsh $DOTFILES_PATH/.symlinks

echo 'Set up is done. Restart your terminal'