export GOPATH=$HOME/go
export PATH=/Users/katsumeshi/.volta/bin/node:$PATH:/Users/katsumeshi/flutter/bin

export ZPLUG_HOME=~/.zplug
export TERM="xterm-256color"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# zplug plugins ------------------------

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
fi

source $ZPLUG_HOME/init.zsh

zplug "tarruda/zsh-autosuggestions"
zplug "plugins/git",   from:oh-my-zsh
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-completions"

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
alias rna="~/Library/Android/sdk/platform-tools/adb reverse tcp:8081 tcp:8081"
alias grmm="git branch --merged|egrep -v '\*|dev|master'|xargs git branch -d"
alias grmm="git branch |egrep -v '\*|dev|staging|master'|xargs git branch -D"

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
zstyle ':completion:*' menu select
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241'
setopt NO_beep

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/katsumeshi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/katsumeshi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/katsumeshi/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/katsumeshi/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
