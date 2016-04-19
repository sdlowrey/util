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
alias ddb='aws dynamodb'
alias ddblist='aws dynamodb list-tables | jq .TableNames[]'
alias ec2='aws ec2'
alias gack='ack --ignore-dir=.tox --ignore-dir=Godeps --ignore-dir=vendor'
alias path='echo $PATH | tr ":" "\n"'
alias sqslist='aws sqs list-queues | jq .QueueUrls[]'
alias snslist='aws sns list-topics | jq .Topics[].TopicArn'

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
export GOPATH=~/newgo
export GOROOT=/usr/local/Cellar/go/1.5.3/libexec
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# PyEnv - keep this near the end
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# Haskell
export PATH=$PATH:/Users/scott/.local/bin
# work only
[[ -r ~/.dev-setup ]] && source ~/.dev-setup
