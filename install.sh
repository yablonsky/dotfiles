#! /bin/bash

DOTFILES=$(pwd)
ln -s "$DOTFILES/shell/.bashrc" "$HOME/.bashrc"
ln -s "$DOTFILES/shell/.inputrc" "$HOME/.inputrc"
ln -s "$DOTFILES/shell/.editrc" "$HOME/.editrc"

ln -s "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
if [ ! -d "$HOME/.tmux/plugins" ]; then
    mkdir -p "$HOME/.tmux/plugins"
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
    echo "Don't for forget to install tmux plugins (prefix + I)"
fi

ln -s "$DOTFILES/vim/.vimrc" "$HOME/.vimrc"
if [ ! -d "$HOME/.vim" ]; then
    mkdir "$HOME/.vim"
    ln -s "$DOTFILES/vim/vundles.vim" "$HOME/.vim/vundles.vim"
    ln -s "$DOTFILES/vim/settings.vim" "$HOME/.vim/settings.vim"
    ln -s -T "$DOTFILES/vim/settings" "$HOME/.vim/settings"
fi

ln -s "$DOTFILES/X/.xinitrc" "$HOME/.xinitrc"
ln -s "$DOTFILES/X/.Xresources" "$HOME/.Xresources"
