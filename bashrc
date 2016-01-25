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

# git prompt stuff
# assuming mac, so use use magicmonty/bash-git-prompt. 
# if linux, see the previous commit of this file.
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    GIT_PROMPT_ONLY_IN_REPO=1
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

# virtualenvwrapper
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/fugue
source /usr/local/bin/virtualenvwrapper.sh

# Go
export GOPATH=~/go
export GOROOT=/usr/local/Cellar/go/1.5.3/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
