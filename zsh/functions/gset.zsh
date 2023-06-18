#!/bin/bash zsh
gset () {
  pwd=$(pwd)
  cd $HOME/.config/zsh && gt -s
  cd $HOME/.config/nvim && gt -s
  cd $HOME/.config/alacritty && gt -s
  cd $HOME/.config/arco-st && gt -s
  cd $HOME/.config/starship && gt -s
  cd $HOME/.config/arco-dwm && gt -s
  cd $HOME/.config/dmenu && gt -s
  cd $HOME/.config/ranger && gt -s
  cd $HOME/.config/zellij && gt -s
  cd $HOME/.config/lazygit && gt -s
  cd $HOME/.config/dwmbar && gt -s
  
  cd $HOME/.tmux && gt -s
  cd $HOME/.nb/home && gt -s

  cd $HOME/Documents/Rust/m-pesa && gt -s
  cd $HOME/Documents/Rust/manta && gt -s
  cd $HOME/Documents/Rust/manta-api && gt -s
  cd $HOME/Documents/Rust/manta-wallet && gt -s

  cd $HOME/Documents/Python/kophee && gt -s

  cd $HOME/Documents/go/src/github.com/Pheon-Dev/flamingo && gt -s

  cd $HOME/Documents/Neovim/antelope && gt -s
  cd $HOME/Documents/Neovim/pigeon && gt -s
  cd $HOME/Documents/Neovim/lir.nvim && gt -s
  cd $HOME/Documents/Neovim/harpoon && gt -s
  cd $HOME/Documents/Neovim/lsp_lines.nvim && gt -s
  cd $pwd
}
