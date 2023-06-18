#!/bin/bash zsh

fl () {
  clear
  list=$(cat $HOME/.config/zsh/functions/fl)
  path=$(echo $list | gum filter | awk 'BEGIN { FS="\"" } { print $2 }')
  # ls && $path
  # selection=$(echo $list | gum filter)
  # echo "$selection" | awk 'BEGIN { FS = " " } { print $2 }'
  # project=$(echo $list | awk 'BEGIN { FS = " " } { print $1 $2 }')
  # path=$(echo $project | awk 'BEGIN { FS = "\n" } { print $1 }' | gum filter)
  # selection=$($path | gum filter)
  # $path;
  # exa --icons -la --color=always --group-directories-first
  # cd - || return
}

# fl
