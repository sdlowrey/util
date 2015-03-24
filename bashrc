# .bashrc

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

export EDITOR=emacs
alias diff='diff --exclude="*~"'

alias sysinfo='sudo dmidecode |grep -A9 "System Info"'

# git-oriented command prompt
SHARE=/usr/share
$macos && SHARE=/usr/local/share
GIT_PROMPT=$SHARE/git-core/contrib/completion/git-prompt.sh
[[ -r $GIT_PROMPT ]] && {
    source $GIT_PROMPT
    PS1='\h $(__git_ps1 "(%s)") \W $ '
}

# SILO-only changes follow
export SVN_URL=svn+ssh://slowrey@dev-svn/svn
