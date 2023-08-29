#!/bin/bash zsh
gset () {
  pwd=$(pwd)
  cd $HOME/.config/zsh && gt -s
  cd $HOME/.config/nvim && gt -s
  cd $HOME/.config/alacritty && gt -s
  # cd $HOME/.config/st && gt -s
  cd $HOME/.config/starship && gt -s
  cd $HOME/.config/dwm && gt -s
  # cd $HOME/.config/dmenu && gt -s
  # cd $HOME/.config/ranger && gt -s
  cd $HOME/.config/zellij && gt -s
  cd $HOME/.config/lazygit && gt -s
  cd $HOME/.config/picom && gt -s
  cd $HOME/.config/rofi && gt -s
  # cd $HOME/.config/joshuto && gt -s
  cd $HOME/.config/btop && gt -s
  cd $HOME/.config/lf && gt -s
  # cd $HOME/.config/dwmbar && gt -s

  cd $HOME/.config/dotfiles && gt -s
  cd $HOME/.config/hypr && gt -s
  # cd $HOME/.nb/home && gt -s
  cd $HOME/.password-store && gt -s
  cd $pwd
}
