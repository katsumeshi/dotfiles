export TERM="xterm-256color"


# alias ------------------------

#ls
alias la="ls -AF"
alias ll="ls -l"

alias mkdir="mkdir -p"
alias md='mkdir -p'
alias rd='rmdir'
alias nc='rm -rf node_modules && npm install'
alias ni='npm install'
alias hg='history 0 | grep --color=auto'
alias ag='alias | grep --color=auto'

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
alias r="source ~/.zshrc"
alias v='code'
alias z="nvim ~/.zshrc"

# git
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gpf='git push --force'
alias gf='git fetch'
alias gc='git commit'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'


# altnatives
alias cat='bat'
alias find='bat'
alias grep='ripgrep'
alias sed='sd'
alias vim='nvim'
alias ls='exa'

eval "$(starship init zsh)"