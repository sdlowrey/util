# -*- mode: shell-script -*-

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

macos=false
[[ $(uname) == "Darwin" ]] && macos=true

# Command shortcuts

if ! $macos; then
    # Linux aliases
    alias ls='ls --color'
else
    # Mac aliases
    alias ls='ls -G'
fi

alias la='ls -a'
alias ll='ls -l'
alias lrt='ls -lrt'

# List the start and elapsed times for processes
alias puptime='ps -eo pid,comm,lstart,etime'

export EDITOR=vim
alias diff='diff --exclude="*~"'

# git-oriented command prompt
GIT_BASH=/usr/share/git-core/contrib/completion
$macos && GIT_BASH=/usr/local/etc/bash_completion.d
[[ -r $GIT_BASH/git-prompt.sh ]] && {
    source $GIT_BASH/git-prompt.sh
    PS1='\h $(__git_ps1 "(%s)") \W $ '
}

# virtualenvwrapper
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/fugue
source /usr/local/bin/virtualenvwrapper.sh
