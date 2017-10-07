export PS1="\[\033[0;36m\]\u:\W \\$ \[\033[0m\]"

alias ls="ls -G"

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
