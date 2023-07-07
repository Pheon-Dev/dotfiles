#!/bin/bash zsh
# https://github.com/junegunn/fzf/blob/master/ADVANCED.md

export FZF_DEFAULT_OPTS="\
  --preview '( \
    [[ -f {} ]] && \
      (bat --style=numbers --color=always {} || cat {})) || \
      ([[ -d {} ]] && \
        (exa --icons -T --color=always --group-directories-first {} || tree -C {}) \
      ) || \
      echo {} 2> /dev/null | head -200' \
  --preview-window 'up,60%,border,+{2}+3/3,~3' \
  --ansi \
  --header 'CTRL-D:   Directories | CTRL-F:  Files' \
  --delimiter : \
  --prompt '  ' \
  --bind 'ctrl-d:change-prompt( )+reload(fd --type directory --hidden --follow --exclude \".git*\")' \
  --bind 'ctrl-f:unbind(change,ctrl-f)+change-prompt( )+reload(fd --type file --hidden --follow --exclude \".git*\")'\
  --bind 'ctrl-l:execute(cd {} 2>/dev/null && nvim || nvim {})' \
  --bind 'alt-i:execute(nvim --server ~/.cache/nvim/server.pipe --remote ~/{})' \
  --bind 'ctrl-h:abort' \
  --color=fg:#c0caf5,bg:#21222c,hl:#bd93f9,border:#44475a \
  --color=fg+:#c0caf5,bg+:#21222c,hl+:#bd93f9 \
  --color=info:#f1fa8c,prompt:#50fa7b,pointer:#ff79c6 \
  --color=marker:#ff79c6,spinner:#f1fa8c,header:#6272a4
  "

  # --bind 'alt-w:unbind(change,alt-w)+change-prompt(2. fzf> )+enable-search+clear-query' \
frg() {
  RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
  INITIAL_QUERY="${*:-}"
  : | fzf --ansi --disabled --query "$INITIAL_QUERY" \
    --bind "start:reload:$RG_PREFIX {q}" \
    --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
    --delimiter : \
    --preview 'bat --color=always {1} --highlight-line {2}' \
    --bind 'enter:execute(nvim {1} +{2})' \
    --bind 'ctrl-l:execute(nvim {1} +{2})' \
    --bind 'ctrl-h:abort' \
    --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
    --color "hl:-1:underline,hl+:-1:underline:reverse" \

  return 0
}

ff () {
  echo " "
  if [[ $1 == "-h" || $1 == "--help" ]]; then
    echo "$(tput setaf 3)   [ -g, --grep   ] search for a text"
    echo "$(tput setaf 3)   [ -h, --help   ] help"
    echo " "
    return 0
  fi
  cd
  if [[ $1 == "-g" || $1 == "--grep" ]]; then
    frg
  fi
  if [[ $1 == "" ]]; then
    fd --type directory -H --strip-cwd-prefix --follow --exclude '.git*' -E '.yarn' -E '.rustup' -E 'go/pkg/mod/*' -E '.cargo/registry/*' -E '.cache' -E '/home/linuxbrew' -E 'node_modules' -E 'targets' | fzf
  fi
  clear
  return 0
}
