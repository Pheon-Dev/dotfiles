#! /usr/bin/env sh

export FZF_DEFAULT_OPTS="--height 64% --layout=reverse --color=fg:#d0d0d0,bg:#363636,hl:#5f87af --color=fg+:#d0d0d0,bg+:#363636,hl+:#648ce3 --color=info:#6d7d85,prompt:#b53c10,pointer:#5895db --color=marker:#87ff00,spinner:#2b751c,header:#87afaf --preview 'bat -pp --color=always'"

zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1a --icons --color=always $realpath'
zstyle ':fzf-tab:complete:mpv:*' fzf-preview 'exa -1a --icons --color=always $realpath'
zstyle ':fzf-tab:complete:*:*' fzf-preview 'bat --color=always ${(Q)realpath}'
zstyle ':fzf-tab:complete:vim:*' fzf-preview 'bat -pp --color=always $realpath'
zstyle ':fzf-tab:complete:cat:*' fzf-preview 'bat -pp --color=always $realpath'
zstyle ':fzf-tab:complete:*:*' fzf-preview 'bat --color=always ${(Q)realpath} || bat -pp --color=always $realpath'
