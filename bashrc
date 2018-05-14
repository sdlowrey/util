# -*- mode: shell-script -*-

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

macos=false
[[ $(uname) == "Darwin" ]] && macos=true
if ! $macos; then
    # Linux aliases
    alias ls='ls --color'
else
    # Mac aliases
    alias ls='ls -G'
fi

function remote_log {
    # remote log follower for aliases
    host=$1
    dir=$2
    file=$3
    ssh $host "tailf $dir/$file"
}

# aliases: generic
alias la='ls -a'
alias ll='ls -l'
alias lrt='ls -lrt'
alias gack='ack --follow --ignore-dir=.tox --ignore-dir=Godeps --ignore-dir=vendor'
alias path='echo $PATH | tr ":" "\n"'

# aliases: aws
alias cfn='aws cloudformation'
alias ddb='aws dynamodb'
alias ddblist='aws dynamodb list-tables | jq .TableNames[]'
alias ec2='aws ec2'
alias netlist='aws ec2 describe-subnets | jq .Subnets[].CidrBlock'
alias snslist='aws sns list-topics | jq .Topics[].TopicArn'
alias sqslist='aws sqs list-queues | jq .QueueUrls[] | tr -d "\""'
alias sublist='aws sns list-subscriptions | jq .[][].SubscriptionArn'
alias vpclist='aws ec2 describe-vpcs | jq .Vpcs[].CidrBlock'

# special alias format for hub
eval "$(hub alias -s)"

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

# Python setup: Use pyenv to manage installed python versions and
# use virtualenvwrapper to manage virtual environments. Bring the
# two together with pyenv-virtualenvwrapper. 
# 
# Can still use virtualenvwrapper commands (eg mkvirtualenv) but
# this variable will cause pyenv to be used to create the virtualenv
#export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true" 
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

# virtualenvwrapper
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/PyCharmProjects
#source /usr/local/bin/virtualenvwrapper.sh

# PyEnv - keep this near the end
#export PYENV_ROOT=$HOME/.pyenv
#export PATH=$PYENV_ROOT/bin:$PATH
# To enable shims and autocompletion add to your profile:
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# work only
[[ -r ~/.dev-setup ]] && source ~/.dev-setup

# added by travis gem
[ -f /Users/scott/.travis/travis.sh ] && source /Users/scott/.travis/travis.sh
