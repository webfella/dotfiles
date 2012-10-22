GRAILS_HOME=/Users/adrianbruinhout/devapps/grails-2.0.0

export PATH=/usr/local/bin:$GRAILS_HOME/bin:$PATH
export PATH="/usr/local/heroku/bin:$PATH"

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

export PS1="$BLACK[ \u@$YELLOW\h $GREEN\w$RED\$(parse_git_branch)\$(parse_svn_branch)$BLACK ]
\[\033[00;31m\]★ ★ ★  \[\033[0m\]"

source $HOME/.git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
