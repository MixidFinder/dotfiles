# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting sudo)

source $ZSH/oh-my-zsh.sh

# Aliases
#
alias vi='nvim'
alias la='ls -a'
alias cl='clear'
alias la='ls -a'
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
## Colorize grep ##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
## Gcc compile with flags ##
alias gccfl='gcc -Wall -Werror -Wextra'
## Clang format ##
alias clfr='clang-format -i */*.c */*.h'
alias clchck='clang-format -n */*.c */*.h'
## Memory chck ##
alias vlgr='valgrind --tool=memcheck --leak-check=yes'
## cpp chck ##
alias cppchck='cppcheck --enable=all --suppress=missingIncludeSystem'

source ~/.autoenv/activate.sh
export PATH="$PATH:/opt/nvim/"
