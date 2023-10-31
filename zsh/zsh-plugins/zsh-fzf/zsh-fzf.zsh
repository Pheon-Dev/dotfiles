#!/bin/dash sh
# https://github.com/junegunn/fzf/blob/master/ADVANCED.md
# https://thevaluable.dev/practical-guide-fzf-example/
# --bind 'alt-w:unbind(change,alt-w)+change-prompt(2. fzf> )+enable-search+clear-query' \

export IGNORE=.git*,.yarn,.rustup,go/pkg/mod/*,.cargo/*,.cache,/home/linuxbrew,node_modules/*,targets,Downloads/pouch,wallet-app/node_modules,kplc-app/node_modules,.cache/*,Music,Videos,Pictures,.cargo,Music/*,.nvm,.vercel,.next,.gitmoji,.hyprland,.tmux,.vim/plugged,.vim/autoload,.vim/.git,.m2,.gradle

fdir() {
  fd --type directory -HE="{$IGNORE}" --strip-cwd-prefix --follow
}

export FZF_DEFAULT_OPTS="\
  --preview '( \
    [[ -f {} ]] && \
      (bat --style=numbers --color=always --theme=TwoDark --pager=never {} || cat {})) || \
      ([[ -d {} ]] && \
        (eza --icons -T --color=always --group-directories-first {} || tree -C {}) \
      ) || \
      echo {} 2> /dev/null | head -200' \
  --preview-window 'up,60%,border,+{2}+3/3,~3' \
  --delimiter : \
  --prompt 'Search   : ' \
  --header ' file [c-f] |  directory [c-d] | ⏎ accept [c-l] |  quit [c-h] :' \
  --bind 'ctrl-d:change-prompt(Directory  : )+reload(fd --type directory -H --strip-cwd-prefix --follow --exclude \"{$IGNORE}\")' \
  --bind 'ctrl-f:change-prompt(File  : )+reload(fd --type file --hidden --follow --exclude \"{$IGNORE}\")'\
  --bind 'ctrl-l:accept' \
  --bind 'ctrl-m:accept' \
  --bind 'ctrl-h:abort' \
  --bind 'ctrl-n:preview-down' \
  --bind 'ctrl-p:preview-up' \
  --bind 'ctrl-v:change-preview-window(right,60%,border,+{2}+3/3,~3|up,60%,border,+{2}+3/3,~3)' \
  --pointer ▊ \
  --marker  \
  --exact \
  --cycle \
  --preview-label 'Results Preview' \
  --color=label:#ffff0f \
  --color=fg:#c0caf5,bg:#1E1E2E,hl:#bd93f9,border:#44475a \
  --color=fg+:#c0caf5,bg+:#1E1E2E,hl+:#bd93f9 \
  --color=info:#f1fa8c,prompt:#50fa7b,pointer:#ff79c6 \
  --color=marker:#ff79c6,spinner:#f1fa8c,header:#6272a4
"

frg() {
  RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
  INITIAL_QUERY="${*:-}"
  : | fzf --ansi --disabled --query "$INITIAL_QUERY" \
    --bind "start:reload:$RG_PREFIX {q}" \
    --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
    --delimiter : \
    --preview 'bat --theme=TwoDark --pager=never --style=plain --color=always {1} --highlight-line {2}' \
    --bind 'enter:execute(nvim {1} +{2})' \
    --bind 'ctrl-l:execute(nvim {1} +{2})' \
    --preview-label '[ripgrep] Results Preview' \
    --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
    --color "hl:-1:underline,hl+:-1:underline:reverse" \

  return 0
}

ff() {
  fdir | fzf \
    --header ' file [c-f] |  directory [c-d] |  nvim [c-l] |  quit [c-h] :' \
    --bind 'ctrl-l:execute(cd {} 2>/dev/null && nvim --listen ~/.cache/nvim/server.pipe || nvim --server ~/.cache/nvim/server.pipe --remote ~/{})'\
    --preview-label '[edit] Results Preview'
}

cdf() {
  fdir | fzf --preview-label '[cd] Results Preview'
}

f() {
  if [[ $1 == "-h" || $1 == "--help" || $1 == "" ]]; then
    echo " "
    echo "$(tput setaf 3)   [ -g, --grep   ] search for a text"
    echo "$(tput setaf 3)   [ -h, --help   ] help"
    echo "$(tput setaf 3)   [ -e, --edit   ] edit"
    echo "$(tput setaf 3)   [ -c, --cd     ] cd"
    echo " "
    return 0
  fi

  cd
  if [[ $1 == "-e" || $1 == "--edit" ]]; then
    ff
  fi
  if [[ $1 == "-g" || $1 == "--grep" ]]; then
    frg
  fi
  if [[ $1 == "-c" || $1 == "-cd" ]]; then
    cd $(cdf)
  fi
  rm -rf ~/.cache/nvim/server.pipe
  clear
  return 0
}
