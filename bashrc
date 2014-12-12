# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Command shortcuts

# color ls not the default on rhel5
alias ls='ls --color'

alias la='ls -a'
alias ll='ls -l'
alias lrt='ls -lrt'

export EDITOR=emacs
alias diff='diff --exclude="*~"'

alias sysinfo='sudo dmidecode |grep -A9 "System Info"'

# git-oriented command prompt
GIT_PROMPT=/usr/share/git-core/contrib/completion/git-prompt.sh
[[ -r $GIT_PROMPT ]] && {
    source $GIT_PROMPT
    PS1='[\h \W$(__git_ps1 " (%s)")]\$ '
}

# SILO-only changes follow

# for sipe/lync
export NSS_SSL_CBC_RANDOM_IV=0
export SVN_URL=svn+ssh://slowrey@dev-svn/svn
