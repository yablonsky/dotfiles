#! /bin/bash

DOTFILES=$(pwd)
echo "Linking Dotfiles"
ln -sf "$DOTFILES/shell/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/shell/.inputrc" "$HOME/.inputrc"
ln -sf "$DOTFILES/shell/.editrc" "$HOME/.editrc"
ln -sf "$DOTFILES/.gitconfig" "$HOME/.gitconfig"
#ln -sf "$DOTFILES/X/.xinitrc" "$HOME/.xinitrc"
#ln -sf "$DOTFILES/X/.Xresources" "$HOME/.Xresources"

if [ ! -f "$HOME/.bash-powerline.sh" ]; then
    echo "Installing Bash-Powerline"
    curl https://raw.githubusercontent.com/riobard/bash-powerline/master/bash-powerline.sh > ~/.bash-powerline.sh
fi

ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
if [ ! -d "$HOME/.tmux/plugins" ]; then
    echo "Installing Tmux plugins"
    mkdir -p "$HOME/.tmux/plugins"
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
    echo "Don't for forget to install tmux plugins (prefix + I)"
fi

if [ ! -d "$HOME/.config/nvim" ]; then
    echo "Installing NVIM config"
    ln -s -T "$DOTFILES/config/nvim" "$HOME/.config/nvim"
    mkdir -p "$HOME/.config/nvim/bundle"
    git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.config/nvim/bundle/Vundle.vim"
    nvim +PluginInstall +qa
fi

if [ ! -d "$HOME/.config/openbox" ]; then
    echo "Installing OpenBox config"
    ln -s -T "$DOTFILES/config/openbox" "$HOME/.config/openbox"
fi
