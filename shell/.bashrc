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

export PATH="$PATH:$HOME/.gem/ruby/2.5.0/bin"

source ~/bash-powerline/bash-powerline.sh

[ -f "$HOME/.bash_vars.sh" ] && . "$HOME/.bash_vars.sh"
[ -f "$HOME/.bash_alias.sh" ] && . "$HOME/.bash_alias.sh"

start_tmux() {
    if [[ ! $TERM =~ "screen" ]] && [ -z $TMUX ]; then
        WHOAMI=$(whoami)
        if tmux has-session -t $WHOAMI 2>/dev/null; then
            exec tmux -2 attach-session -t $WHOAMI
        else
            exec tmux -2 new-session -s $WHOAMI
        fi
    fi
}

ext_ip() {
    echo $(ip -br -4 addr | grep UP | awk '{split($3,s,"/"); print s[1]}')
}

if [ -z $NVIM_LISTEN_ADDRESS ]; then
    nvim +te
fi
