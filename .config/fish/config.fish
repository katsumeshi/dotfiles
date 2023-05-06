fish_add_path /opt/homebrew/bin

# fzf
fzf_configure_bindings --directory=\cf
fzf_configure_bindings --git_log=\cg
fzf_configure_bindings --git_status=\cs
fzf_configure_bindings --processes=\cp

# geneal
set -x TERM xterm-256color
set -x DOTFILES_PATH $HOME/dotfiles
set -x SCREENSHOTS_PATH $HOME/screenshots
set -x VOLTA $HOME/.volta
set -x PATH $HOME/.volta/bin:$HOME/.local/bin:$PATH

# android - react native
set -x ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -x PATH $PATH:$ANDROID_SDK_ROOT/emulator
set -x PATH $PATH:$ANDROID_SDK_ROOT/platform-tools

set -x GOPATH $HOME/go
set -x PATH $PATH:(go env GOPATH)/bin
# work -------------------------

set -x GH_TOKEN (gcloud secrets versions access latest --secret="AO-Github" --project=agents-only-dev)

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

# 1 character
alias a='alias'
alias c="clear"
alias f="find . -iname"
alias g='git'
alias l='lfcd'
alias p='pwd'
alias m='mkdir'
alias n='npm'
alias h="history"
alias r="source ~/.config/fish/config.fish"
alias v='vim'

# tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias td='tmux detach'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

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
zoxide init fish | source
