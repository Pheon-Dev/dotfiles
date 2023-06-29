#!/bin/bash zsh
# 282a36 https://github.com/junegunn/fzf/blob/master/ADVANCED.md

export FZF_DEFAULT_OPTS='--color=fg:#c0caf5,bg:#21222c,hl:#bd93f9,border:#44475a --color=fg+:#c0caf5,bg+:#21222c,hl+:#bd93f9 --color=info:#f1fa8c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#f1fa8c,header:#6272a4'

export FZF_DEFAULT_OPTS="\
  --preview '( \
    [[ -f {} ]] && \
      (bat --style=numbers --color=always {} || cat {})) || \
      ([[ -d {} ]] && \
        (exa --icons -T --color=always --group-directories-first {} || tree -C {}) \
      ) || \
      echo {} 2> /dev/null | head -200' \
  --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
  --bind 'ctrl-d:change-prompt(Directories> )+reload(find * -type d)' \
  --bind 'ctrl-f:change-prompt(Files> )+reload(find * -type f)'\
  "
