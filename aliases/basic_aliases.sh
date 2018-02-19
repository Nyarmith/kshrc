if [[ $(get_arch) != "HP-UX" && $(get_arch) != "AIX" ]]; then
  alias ls="ls --color"
fi

alias l=ls
alias la='ls -a'
alias ll='ls -lrth'

alias  ..='cd ..'
alias ..1='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

# *WARNING* NOT ACTUALLY AN ALIAS
cdp(){
  cd ~/Projects
  if [ ! -z $1 ]; then
    cd $1
  fi
}
alias cdi="cd ~/Images"
alias cda="cd ~/Audio"
alias cdd="cd ~/Documents"

alias egrep='egrep --color=auto'

alias t=tmux
