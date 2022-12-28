fish_add_path /opt/homebrew/bin

# fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"

# enhancd
set -x ENHANCD_FILTER fzf

# color scheme
source ~/.config/fish/themes/nightfox.theme

# geneal
set -x TERM xterm-256color
set -x DOTFILES_PATH $HOME/dotfiles
set -x SCREENSHOTS_PATH $HOME/screenshots
set -x VOLTA_HOME $HOME/.volta
set -x PATH $VOLTA_HOME/bin:$PATH

# android - react native
set -x ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -x PATH $PATH:$ANDROID_SDK_ROOT/emulator
set -x PATH $PATH:$ANDROID_SDK_ROOT/platform-tools

# work -------------------------

set -x GH_TOKEN $(gcloud secrets versions access latest --secret="AO-Github" --project=agents-only-dev)

# alias ------------------------

#ls
alias la="ls -AF"
alias ll="ls -l"

alias mkdir="mkdir -p"
alias md='mkdir -p'
alias rd='rmdir'
alias nc='rm -rf node_modules && npm install'
alias ni='npm install'
alias hg='history 0 | rg --color=auto'
alias ag='alias | rg --color=auto'
alias rmac='source ~/.macos'
alias rsym='sh ~/.symlinks'
alias rall='rsym && r && rmac'

# 1 charactor
alias a='alias'
alias c="clear"
alias f="find . -iname"
alias g='git'
alias l='ls -lah'
alias p='pwd'
alias m='mkdir'
alias n='npm'
alias h="history"
alias r="source ~/.config/fish/config.fish"
alias v='code'
# alias z="nvim ~/.zshrc"

# git
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gl='git pull'
alias glr='git pull --rebase'
alias gb='git branch'
alias gs='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'
alias gt='git t'
alias gta='git ta'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'


# altnatives
alias cat='bat'
alias find='fd'
alias grep='rg'
alias vim='nvim'
alias ls='exa'

starship init fish | source
