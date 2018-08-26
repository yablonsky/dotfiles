#! /bin/bash

DOTFILES=$(pwd)
ln -sf "$DOTFILES/shell/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/shell/.inputrc" "$HOME/.inputrc"
ln -sf "$DOTFILES/shell/.editrc" "$HOME/.editrc"
ln -s -T "$DOTFILES/git" "$HOME/.git"

curl https://raw.githubusercontent.com/riobard/bash-powerline/master/bash-powerline.sh > ~/.bash-powerline.sh

ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
if [ ! -d "$HOME/.tmux/plugins" ]; then
    mkdir -p "$HOME/.tmux/plugins"
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
    echo "Don't for forget to install tmux plugins (prefix + I)"
fi

if [ ! -d "$HOME/.config/nvim" ]; then
    ln -s -T "$DOTFILES/config/nvim" "$HOME/.config/nvim"
    mkdir -p "$HOME/.config/nvim/bundle"
    git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.config/nvim/bundle/Vundle.vim"
    nvim +PluginInstall +qa
fi
