# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto

ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions fast-syntax-highlighting sudo)

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
## Gcc compile with flags ##
alias gccfl='gcc -Wall -Werror -Wextra'
## Clang format ##
alias clfr='clang-format -i */*.c */*.h'
alias clchck='clang-format -n */*.c */*.h'
## Memory chck ##
alias vlgr='valgrind --tool=memcheck --leak-check=yes'
## cpp chck ##
alias cppchck='cppcheck --enable=all --suppress=missingIncludeSystem'
alias lg='lazygit'
alias ld='lazydocker'
alias lq="lazysql"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
