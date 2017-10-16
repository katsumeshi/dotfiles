export ZSH=$HOME/.oh-my-zsh

alias vim="nvim"
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vim"
alias reload="source ~/.zshrc"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh
