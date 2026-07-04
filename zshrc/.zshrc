# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto
ZSH_THEME="gnzh"

ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions sudo)

source $ZSH/oh-my-zsh.sh

cd ~

# Aliases
#
alias nv='nvim'
alias la='ls -a'
alias cl='clear'
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
## Colorize grep ##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias lg='lazygit'
alias ld='lazydocker'
alias lq="lazysql"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
