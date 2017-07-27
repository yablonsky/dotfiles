#! /bin/bash

DOTFILES=$(pwd)
ln -sf "$DOTFILES/shell/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/shell/.inputrc" "$HOME/.inputrc"
ln -sf "$DOTFILES/shell/.editrc" "$HOME/.editrc"

ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
if [ ! -d "$HOME/.tmux/plugins" ]; then
    mkdir -p "$HOME/.tmux/plugins"
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
    echo "Don't for forget to install tmux plugins (prefix + I)"
fi

ln -sf "$DOTFILES/vim/.vimrc" "$HOME/.vimrc"
if [ ! -d "$HOME/.vim" ]; then
    mkdir -p "$HOME/.vim/bundle"
    git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"
    ln -s "$DOTFILES/vim/vundles.vim" "$HOME/.vim/vundles.vim"
    ln -s "$DOTFILES/vim/settings.vim" "$HOME/.vim/settings.vim"
    ln -s -T "$DOTFILES/vim/settings" "$HOME/.vim/settings"
    vim +PluginInstall +qall
    cd ${HOME}/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer
    cd ${HOME}
    ln -s -T "$DOTFILES/vim/ftplugin" "$HOME/.vim/ftplugin"
fi
