#! /bin/bash

DOTFILES=$(pwd)
echo "Linking Dotfiles"
ln -sf "$DOTFILES/shell/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/shell/.inputrc" "$HOME/.inputrc"
ln -sf "$DOTFILES/shell/.editrc" "$HOME/.editrc"
ln -sf "$DOTFILES/.gitconfig" "$HOME/.gitconfig"
#ln -sf "$DOTFILES/X/.xinitrc" "$HOME/.xinitrc"
#ln -sf "$DOTFILES/X/.Xresources" "$HOME/.Xresources"
ln -sf "$DOTFILES/X/.xprofile" "$HOME/.xprofile"

echo "Installing Bash-Powerline"
ln -sf "$DOTFILES/shell/.bash-powerline.sh" "$HOME/.bash-powerline.sh"

echo "Installing i3 config"
ln -sf -T "$DOTFILES/config/i3" "$HOME/.config/i3"
echo "Installing i3status config"
ln -sf -T "$DOTFILES/config/i3status" "$HOME/.config/i3status"

echo "Installing rofi config"
ln -sf -T "$DOTFILES/config/rofi" "$HOME/.config/rofi"

echo "Installing alacritty config"
ln -sf -T "$DOTFILES/config/alacritty" "$HOME/.config/alacritty"

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

echo "Installing pywal config"
ln -sf "$HOME/.cache/wal/colors.Xresources" "$HOME/.Xresources"
