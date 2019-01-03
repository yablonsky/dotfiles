#! /bin/bash

DOTFILES=$(pwd)
echo "Linking shell dotfiles"
ln -sf "$DOTFILES/shell/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/shell/.inputrc" "$HOME/.inputrc"
ln -sf "$DOTFILES/shell/.editrc" "$HOME/.editrc"

echo "Linking gitconfig"
ln -sf "$DOTFILES/.gitconfig" "$HOME/.gitconfig"

echo "Linking Bash-Powerline"
ln -sf "$DOTFILES/shell/.bash-powerline.sh" "$HOME/.bash-powerline.sh"

echo "Linking i3 config"
ln -sf -T "$DOTFILES/config/i3" "$HOME/.config/i3"
echo "Linking i3status config"
ln -sf -T "$DOTFILES/config/i3status" "$HOME/.config/i3status"

echo "Linking i3blocks config"
if [ ! -d "$HOME/.config/i3blocks" ]; then
    git clone https://github.com/vivien/i3blocks-contrib "$HOME/.config/i3blocks"
else
    pushd "$HOME/.config/i3blocks" && git pull && popd
fi
ln -sf "$DOTFILES/config/i3blocks/config" "$HOME/.config/i3blocks/config"

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

echo "Linking NVIM config"
ln -s -T "$DOTFILES/config/nvim" "$HOME/.config/nvim"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim --headless +PlugInstall +qa

echo "Linking pywal config"
ln -sf "$HOME/.cache/wal/colors.Xresources" "$HOME/.Xresources"

echo "Linking compton config"
ln -sf "$DOTFILES/config/compton.conf" "$HOME/.config/compton.conf"

echo "Linking redshift config"
ln -sf -T "$DOTFILES/config/redshift" "$HOME/.config/redshift"

echo "Linking dunst config"
ln -sf -T "$DOTFILES/config/dunst" "$HOME/.config/dunst"

echo "Linking gtk configs"
ln -sf "$DOTFILES/config/.gtkrc-2.0" "$HOME/.gtkrc-2.0"
ln -sf "$DOTFILES/config/gtk-3.0/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
