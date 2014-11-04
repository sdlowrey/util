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

# Color prompts with git branch name

# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

export PS1="$Yellow[\u@\h$Red\$(__git_ps1)$Yellow]$Color_Off$ "

# SILO-only changes follow

# for sipe/lync
export NSS_SSL_CBC_RANDOM_IV=0
export SVN_URL=svn+ssh://slowrey@dev-svn/svn
