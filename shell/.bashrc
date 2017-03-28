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

Xterm() {
    xinit "$@" -- -nocursor
}

Xtmux() {
    if [[ $TERM != "screen" ]]; then
        WHOAMI=$(whoami)
        if tmux has-session -t $WHOAMI 2>/dev/null; then
            Xterm tmux -2 attach-session -t $WHOAMI
        else
            Xterm tmux -2 new-session -s $WHOAMI
        fi
    fi
}

[ -f "$HOME/.bash_vars.sh" ] && source "$HOME/.bash_vars.sh"
[ -f "$HOME/.bash_alias.sh" ] && source "$HOME/.bash_alias.sh"
