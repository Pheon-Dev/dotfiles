#!/bin/bash zsh
# 282a36
# source "$HOME/.config/zsh/fzf-tab/fzf-tab.zsh"
# source "$HOME/.config/zsh/fzf-tab-source/fzf-tab-source.plugin.zsh"

export FZF_DEFAULT_OPTS='--color=fg:#c0caf5,bg:#21222c,hl:#bd93f9,border:#44475a --color=fg+:#c0caf5,bg+:#21222c,hl+:#bd93f9 --color=info:#f1fa8c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#f1fa8c,header:#6272a4'

export FZF_DEFAULT_OPTS="--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (exa --icons -T --color=always --group-directories-first {} || tree -C {})) || echo {} 2> /dev/null | head -200' --preview-window=top"
