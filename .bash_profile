GRAILS_HOME=/Users/adrianbruinhout/devapps/grails-2.0.0

export PATH=/usr/local/bin:$GRAILS_HOME/bin:$PATH

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
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[01;31m\]"
YELLOW="\[\033[00;33m\]"
BLUE="\[\033[00;36m\]"
GREEN="\[\033[0;32m\]"

export PS1="$BLACK[ \u@$YELLOW\h $GREEN\w$RED_BOLD\$(parse_git_branch)\$(parse_svn_branch)$BLACK ] 
\e[0;31m★ ★ ★\e[m  "

source $HOME/.git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
