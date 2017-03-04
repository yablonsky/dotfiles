#! /bin/bash

ln -s `pwd`/shell/.bashrc "$HOME/.bashrc"

ln -s `pwd`/tmux/.tmux.conf "$HOME/.tmux.conf"

ln -s `pwd`/vim/.vimrc "$HOME/.vimrc"
[ -d "$HOME/.vim" ] || mkdir "$HOME/.vim"
ln -s `pwd`/vim/vundles.vim "$HOME/.vim/vundles.vim"
ln -s `pwd`/vim/settings.vim "$HOME/.vim/settings.vim"
ln -s -T `pwd`/vim/settings "$HOME/.vim/settings"

ln -s `pwd`/X/.xinitrc "$HOME/.xinitrc"
ln -s `pwd`/X/.Xresources "$HOME/.Xresorces"
