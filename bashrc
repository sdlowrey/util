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

# SILO-only changes follow

# for sipe/lync
export NSS_SSL_CBC_RANDOM_IV=0
export SVN_URL=svn+ssh://slowrey@dev-svn/svn
