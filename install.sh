#! /bin/bash

DOTFILES=$(pwd)
echo "Linking Dotfiles"
ln -sf "$DOTFILES/shell/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/shell/.inputrc" "$HOME/.inputrc"
ln -sf "$DOTFILES/shell/.editrc" "$HOME/.editrc"
ln -sf "$DOTFILES/.gitconfig" "$HOME/.gitconfig"

echo "Linking Bash-Powerline"
ln -sf "$DOTFILES/shell/.bash-powerline.sh" "$HOME/.bash-powerline.sh"

echo "Linking i3 config"
ln -sf -T "$DOTFILES/config/i3" "$HOME/.config/i3"
echo "Linking i3status config"
ln -sf -T "$DOTFILES/config/i3status" "$HOME/.config/i3status"

echo "Linking rofi config"
ln -sf -T "$DOTFILES/config/rofi" "$HOME/.config/rofi"

echo "Linking alacritty config"
ln -sf -T "$DOTFILES/config/alacritty" "$HOME/.config/alacritty"

ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
if [ ! -d "$HOME/.tmux/plugins" ]; then
    echo "Linking Tmux plugins"
    mkdir -p "$HOME/.tmux/plugins"
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
    echo "Don't for forget to install tmux plugins (prefix + I)"
fi

if [ ! -d "$HOME/.config/nvim" ]; then
    echo "Linking NVIM config"
    ln -s -T "$DOTFILES/config/nvim" "$HOME/.config/nvim"
    mkdir -p "$HOME/.config/nvim/bundle"
    git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.config/nvim/bundle/Vundle.vim"
    nvim +PluginInstall +qa
fi

echo "Linking pywal config"
ln -sf "$HOME/.cache/wal/colors.Xresources" "$HOME/.Xresources"

echo "Linking compton config"
ln -sf "$DOTFILES/config/compton.conf" "$HOME/.config/compton.conf"

echo "Linking redshift config"
ln -sf -T "$DOTFILES/config/redshift" "$HOME/.config/redshift"

echo "Linking gtk configs"
ln -sf "$DOTFILES/config/.gtkrc-2.0" "$HOME/.gtkrc-2.0"
ln -sf "$DOTFILES/config/gtk-3.0/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
