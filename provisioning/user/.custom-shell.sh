# custom-shell.sh

# Exports
#export PATH=/usr/local/lib:$PATH
#export PATH=$PATH:/usr/local/bin
#export PATH=$PATH:/usr/lib/php/bin
#export PATH=$PATH:/usr/local/mysql/bin

source ~/.git-completion.sh

# Command Prompt PS1
#export PS1="\n\[\033[1;36m\]\u @\[\033[1;37m\] \h\[\033[1;33m] \[\033[0;36m\]`date`\n\[\033[0m\][\[\033[1;33m\]\w\[\033[0m\]] "
#export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]:->$(__git_ps1 " (%s)")\$ '
export PS1='${debian_chroot}\[\033[01;34m\]\w\[\033[01;32m\]shenry:->$(__git_ps1 " (%s)")\$\[\033[00m\] '
#export PS1='${PWD/#$HOME/~}\007:->$(__git_ps1 " (%s)")\$ '

# Colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
