export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin
export ZPLUG_HOME=~/.zplug
export TERM="xterm-256color"


# zplug plugins ------------------------

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
fi

source $ZPLUG_HOME/init.zsh

zplug "tarruda/zsh-autosuggestions"
zplug "plugins/git",   from:oh-my-zsh
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load --verbose

# alias ------------------------

alias vim="nvim"
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vim"
alias reload="source ~/.zshrc"

alias la="ls -AF"
alias ll="ls -l"

alias c="clear"

alias h="history"
alias hag="history | ag"

alias ffind="find . -iname"

alias mkdir="mkdir -p"
alias l='ls -lah'
alias md='mkdir -p'
alias rd='rmdir'

alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd......='cd ../../../../..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# fshow - git commit browser
fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

autoload -U promptinit; promptinit
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241'
