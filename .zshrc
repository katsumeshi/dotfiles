export TERM="xterm-256color"
export DOTFILES_PATH=$HOME/dotfiles
export SCREENSHOTS_PATH=$HOME/screenshots
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# work -------------------------

export GH_TOKEN=$(gcloud secrets versions access latest --secret="AO-Github" --project=agents-only-dev)

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
alias grep='rg'
alias vim='nvim'
alias ls='eza'

# zsh-completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    # zsh-autosuggestions
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    # zsh-syntax-highlighting
    source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

    autoload -Uz compinit && compinit -u
fi
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    if ! IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)); then
      local ret=$?
      IFS="$si"
      return $ret
    fi
    IFS="$si"
    if type __ltrim_colon_completions &>/dev/null; then
      __ltrim_colon_completions "${words[cword]}"
    fi
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    if ! IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)); then

      local ret=$?
      IFS="$si"
      return $ret
    fi
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###


eval "$(starship init zsh)"
