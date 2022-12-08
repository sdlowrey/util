# -*- mode: shell-script -*-

macos=false
[[ $(uname) == "Darwin" ]] && macos=true
if ! $macos; then
    # Linux aliases
    alias ls='ls --color'
else
    # Mac aliases
    alias ls='ls -G'
    alias pycharm='open -na "PyCharm CE.app"'
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

# List the start and elapsed times for processes
alias puptime='ps -eo pid,comm,lstart,etime'

export EDITOR=vim
alias diff='diff --exclude="*~"'

# git prompt stuff
# assuming mac, so use use magicmonty/bash-git-prompt. 
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

# work only
[[ -r ~/.dev-setup ]] && source ~/.dev-setup

