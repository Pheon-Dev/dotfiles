#!/bin/bash zsh

zinit light zsh-users/zsh-autosuggestions
zinit light z-shell/F-Sy-H
zinit light softmoth/zsh-vim-mode
zinit wait lucid for z-shell/zsh-fancy-completions

zinit snippet "$HOME/.config/zsh/zsh-plugins/zsh-autopair/zsh-autopair.zsh"
zinit snippet "$HOME/.config/zsh/zsh-plugins/zsh-fzf/zsh-fzf.zsh"
# zinit snippet "$HOME/.config/zsh/zsh-plugins/zsh-autocomplete/zsh-autocomplete.zsh"
# zinit snippet "$HOME/.config/broot/launcher/bash/br"
