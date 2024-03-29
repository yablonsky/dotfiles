#! /bin/bash
set -euo pipefail

DOTFILES=$(pwd)
MODULE="${1:-all}"

function install_prompt() {
  if [[ $MODULE != "all" && $MODULE != $1 ]]; then
    return 1
  fi
  read -p "Install $1 [y/N]? " answer
  if [[ -z "$answer" || "$answer" == [Nn]* ]]; then
    echo "Skipping $1"
    return 1
  else
    echo "Installing $1"
    return 0
  fi
}

if install_prompt "shell"; then
  echo "Linking shell dotfiles"
  ln -sfv "$DOTFILES/shell/.bashrc" "$HOME/.bashrc"
  ln -sfv "$DOTFILES/shell/.inputrc" "$HOME/.inputrc"
  ln -sfv "$DOTFILES/shell/.editrc" "$HOME/.editrc"
  #ln -sfv "$DOTFILES/shell/.bash_profile" "$HOME/.bash_profile"

  echo "Linking Bash-Powerline"
  ln -sfv "$DOTFILES/shell/.bash-powerline.sh" "$HOME/.bash-powerline.sh"
fi

if install_prompt "git"; then
  echo "Linking gitconfig"
  ln -sfv "$DOTFILES/.gitconfig" "$HOME/.gitconfig"
fi

if install_prompt "X"; then
  echo "Linking X configs"
  ln -sfv "$DOTFILES/X/.xprofile" "$HOME/.xprofile"
  ln -sfv "$DOTFILES/X/.xinitrc" "$HOME/.xinitrc"
fi

if install_prompt "i3"; then
  echo "Linking i3 config"
  ln -sfv -T "$DOTFILES/config/i3" "$HOME/.config/i3"
  echo "Linking i3status config"
  ln -sfv -T "$DOTFILES/config/i3status" "$HOME/.config/i3status"
fi

if install_prompt "i3blocks"; then
  echo "Linking i3blocks config"
  if [ ! -d "$HOME/.config/i3blocks" ]; then
      git clone https://github.com/vivien/i3blocks-contrib "$HOME/.config/i3blocks"
  else
      pushd "$HOME/.config/i3blocks" && git pull && popd
  fi
  ln -sfv "$DOTFILES/config/i3blocks/config" "$HOME/.config/i3blocks/config"
fi

if install_prompt "rofi"; then
  echo "Linking rofi config"
  ln -sfv -T "$DOTFILES/config/rofi" "$HOME/.config/rofi"
fi

if install_prompt "alacritty"; then
  echo "Linking alacritty config"
  ln -sfv "$DOTFILES/config/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"
fi

if install_prompt "tmux"; then
  ln -sfv "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
  if [ ! -d "$HOME/.tmux/plugins" ]; then
      echo "Linking Tmux plugins"
      mkdir -p "$HOME/.tmux/plugins"
      git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
      echo "Don't forget to install tmux plugins (prefix + I)"
  fi
fi

if install_prompt "neovim"; then
  if [ ! -d "$HOME/.config/nvim" ]; then
      echo "NVIM: linking config"
      ln -s -T "$DOTFILES/config/nvim" "$HOME/.config/nvim"
      curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      echo "Nvim: Installing plugins"
      nvim --headless +PlugInstall +UpdateRemotePlugins +qa
  else
      echo "Nvim: Updating plugins"
      nvim --headless +PlugClean +PlugUpdate +qa
  fi
fi

if install_prompt "SpaceVim"; then
  ln -s -T "$DOTFILES/config/SpaceVim" "$HOME/.SpaceVim.d"
fi

if install_prompt "pywal"; then
  echo "Linking pywal config"
  ln -sfv "$HOME/.cache/wal/colors.Xresources" "$HOME/.Xresources"
fi

if install_prompt "compton"; then
  echo "Linking compton config"
  ln -sfv "$DOTFILES/config/compton.conf" "$HOME/.config/compton.conf"
fi

if install_prompt "redshift"; then
  echo "Linking redshift config"
  ln -sfv -T "$DOTFILES/config/redshift" "$HOME/.config/redshift"
fi

if install_prompt "dunst"; then
  echo "Linking dunst config"
  ln -sfv -T "$DOTFILES/config/dunst" "$HOME/.config/dunst"
fi

if install_prompt "gtk"; then
  echo "Linking gtk configs"
  ln -sfv "$DOTFILES/config/.gtkrc-2.0" "$HOME/.gtkrc-2.0"
  ln -sfv "$DOTFILES/config/gtk-3.0/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
fi

if install_prompt "sway"; then
  echo "Linking sway config"
  ln -sfv -T "$DOTFILES/config/sway" "$HOME/.config/sway"
  ln -sfv -T "$DOTFILES/config/swaylock" "$HOME/.config/swaylock"
fi

if install_prompt "waybar"; then
  ln -sfv -T "$DOTFILES/config/waybar" "$HOME/.config/waybar"
fi
if install_prompt "mako"; then
  ln -sfv -T "$DOTFILES/config/mako" "$HOME/.config/mako"
fi
if install_prompt "fontconfig"; then
  ln -sfv -T "$DOTFILES/config/fontconfig" "$HOME/.config/fontconfig"
fi
