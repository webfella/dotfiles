GRAILS_HOME=/Users/adrianbruinhout/devapps/grails-2.0.0
PHP_HOME=/Applications/MAMP/bin/php/php5.4.4

export PATH=$HOME/usr/local/bin:/local/node/bin:$GRAILS_HOME/bin:$PHP_HOME/bin:/usr/local/heroku/bin:/usr/local/eb:$PATH
export NODE_PATH=/usr/local/lib/node_modules

parse_git_branch () {
    git name-rev HEAD 2> /dev/null | sed 's#HEAD\ \(.*\)# (git::\1)#'
}
parse_svn_branch() {
    parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk '{print " (svn::"$1")" }'
}
parse_svn_url() {
    svn info 2>/dev/null | sed -ne 's#^URL: ##p'
}
parse_svn_repository_root() {
    svn info 2>/dev/null | sed -ne 's#^Repository Root: ##p'
}

BLACK="\[\033[0;38m\]"
RED="\[\033[00;31m\]"
RED_BOLD="\[\033[01;31m\]"
YELLOW="\[\033[00;33m\]"
GREEN="\[\033[0;32m\]"

export LESS_TERMCAP_mb=$'\E[00;32m'
export LESS_TERMCAP_md=$'\E[00;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[00;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[00;36m'

export PS1="$BLACK[ \u@$YELLOW\h $GREEN\w$RED\$(parse_git_branch)\$(parse_svn_branch)$BLACK ]
\[\033[00;31m\]★ ★ ★  \[\033[0m\]"

source $HOME/.git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function