#!/bin/bash zsh
# zmodload zsh/zprof # time-zsh

if [[ ! "$OSTYPE" =~ ^freebsd ]]; then
  eval "$(zoxide init zsh)"
  . /usr/share/z/z.sh

  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
export PIP_BREAK_SYSTEM_PACKAGES=1
export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"
