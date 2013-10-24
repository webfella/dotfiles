ZSH=$HOME/.oh-my-zsh

ZSH_THEME="eastwood"

alias zshconfig="sublime ~/.zshrc"
alias ohmyzsh="sublime ~/.oh-my-zsh"
alias cwd="pwd | tr -d '\n' | pbcopy"
alias sites="cd ~/Documents/workspace/Webfella && ls"

DISABLE_CORRECTION="true"

DISABLE_UPDATE_PROMPT=true

plugins=(brew git git-flow npm ruby rails3)

source $ZSH/oh-my-zsh.sh

export PATH=/Users/adrianbruinhout/.rvm/bin:/usr/local/eb:/Applications/MAMP/bin/php/php5.4.4/bin:/usr/local/heroku/bin:/Users/adrianbruinhout/local/node/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"