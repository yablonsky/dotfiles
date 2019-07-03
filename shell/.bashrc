# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.

if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.

export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export TERMINAL=/usr/bin/alacritty
export FZF_DEFAULT_COMMAND='rg --hidden -l ""'

export PATH="$PATH:$HOME/.local/bin"

alias ls='ls --color=auto'
alias la='ls -lah --color=auto'
alias grep='grep --color=auto'

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

source ~/.bash-powerline.sh

[ -f "$HOME/.bash_vars.sh" ] && . "$HOME/.bash_vars.sh"
[ -f "$HOME/.bash_alias.sh" ] && . "$HOME/.bash_alias.sh"
