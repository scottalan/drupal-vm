if [ -f .custom-shell.sh ]; then
  . ~/.custom-shell.sh
fi

if [ -f .git_prompt ]; then
  . ~/.git_prompt
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export PS1='\[\033[00m\]DRUPAL-VM:${debian_chroot}\[\033[01;34m\]\w\[\033[01;32m\]->$(__git_ps1 " (%s)")\$\[\033[00m\] '
#export PS1='${PWD/#$HOME/~}\007:->$(__git_ps1 " (%s)")\$ '

# Colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#PATH=$HOME/.composer/vendor/bin:$PATH

