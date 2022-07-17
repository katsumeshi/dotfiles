export TERM="xterm-256color"
export DOTFILES_PATH=$HOME/dotfiles


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
alias rsym='source ~/.symlinks'
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
alias r="source ~/.zshrc"
alias v='code'
alias z="nvim ~/.zshrc"

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
alias grep='ripgrep'
alias sed='sd'
alias vim='nvim'
alias ls='exa'

# zsh-completions
if type brew &>/dev/null; then
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit && compinit -u
fi


eval "$(starship init zsh)"

echo ">> reloaded zshrc <<"