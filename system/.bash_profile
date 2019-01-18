export PS1="\[\033[0;36m\]\u:\W \\$ \[\033[0m\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls="ls -G"

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
