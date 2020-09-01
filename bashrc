source ~/dotfiles/bash/aliases
source ~/dotfiles/git-completion.bash

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
GRAY="\[\e[0m\]"

PS1="\$(date +%H:%M) $YELLOW\w$GREEN\$(parse_git_branch)$GRAY \$ "

