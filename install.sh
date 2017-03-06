#! /bin/bash

ln -s `pwd`/shell/.bashrc "$HOME/.bashrc"
ln -s `pwd`/shell/.inputrc "$HOME/.inputrc"
ln -s `pwd`/shell/.editrc "$HOME/.editrc"

ln -s `pwd`/tmux/.tmux.conf "$HOME/.tmux.conf"
ln -s `pwd`/tmux/.tmux.conf.plugins "$HOME/.tmux.conf.plugins"

ln -s `pwd`/vim/.vimrc "$HOME/.vimrc"
[ -d "$HOME/.vim" ] || mkdir "$HOME/.vim"
ln -s `pwd`/vim/vundles.vim "$HOME/.vim/vundles.vim"
ln -s `pwd`/vim/settings.vim "$HOME/.vim/settings.vim"
ln -s -T `pwd`/vim/settings "$HOME/.vim/settings"

ln -s `pwd`/X/.xinitrc "$HOME/.xinitrc"
ln -s `pwd`/X/.Xresources "$HOME/.Xresources"
