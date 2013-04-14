ZSH=$HOME/.oh-my-zsh

ZSH_THEME="blinks"

alias zshconfig="sublime ~/.zshrc"
alias ohmyzsh="sublime ~/.oh-my-zsh"

plugins=(brew git git-flow npm ruby rails3)

source $ZSH/oh-my-zsh.sh

export PATH=/Users/adrianbruinhout/.rvm/gems/ruby-1.9.3-p194/bin:/Users/adrianbruinhout/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/adrianbruinhout/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/adrianbruinhout/.rvm/bin:/usr/local/eb:/Applications/MAMP/bin/php/php5.4.4/bin:/usr/local/heroku/bin:/Users/adrianbruinhout/local/node/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"