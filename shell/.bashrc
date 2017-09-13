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

export EDITOR=/usr/bin/vim

source ~/bash-powerline/bash-powerline.sh

# export PROMPT_COMMAND=set_prompt

set_prompt() {
    local ex=$?
    #----------------------------------------------------------------------------#
    # Bash text colour specification:  \e[<STYLE>;<COLOUR>m
    # (Note: \e = \033 (oct) = \x1b (hex) = 27 (dec) = "Escape")
    # Styles:  0=normal, 1=bold, 2=dimmed, 4=underlined, 7=highlighted
    # Colours: 31=red, 32=green, 33=yellow, 34=blue, 35=purple, 36=cyan, 37=white
    #----------------------------------------------------------------------------#
    local red='\e[1;31m'
    local green='\e[1;32m'
    local blue='\e[1;34m'
    local suffix=''
    local color=$blue
    readonly RESET="\[$(tput sgr0)\]"

    [[ "$ex" -ne 0 ]] && color=$red && suffix=" > $ex"

    PS1="\[$green\][\A] \[$color\][\u@\h \w$suffix]\[$(tput sgr0)\]\[$reset\] "
}

[ -f "$HOME/.bash_vars.sh" ] && source "$HOME/.bash_vars.sh"
[ -f "$HOME/.bash_alias.sh" ] && source "$HOME/.bash_alias.sh"

if [[ ! $TERM =~ "screen" ]] && [ -z $TMUX ]; then
    WHOAMI=$(whoami)
    if tmux has-session -t $WHOAMI 2>/dev/null; then
        exec tmux -2 attach-session -t $WHOAMI
    else
        exec tmux -2 new-session -s $WHOAMI
    fi
fi
