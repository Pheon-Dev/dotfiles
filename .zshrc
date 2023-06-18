# # Lines configured by zsh-newuser-install
# HISTFILE=~/.histfile
# HISTSIZE=1000
# SAVEHIST=1000
# setopt autocd extendedglob nomatch
# unsetopt beep
# bindkey -v
# # End of lines configured by zsh-newuser-install
# # The following lines were added by compinstall
# zstyle :compinstall filename '/home/pheon-dev/.zshrc'
#
# autoload -Uz compinit
# compinit
# # End of lines added by compinstall
export ZSH="$HOME/.config/zsh/zsh"
source $ZSH/zsh.sh

export STARSHIP_CACHE=~/.starship/cache
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

export EDITOR='nvim'
export VISUAL='nvim'

source "$HOME/.config/zsh/fzf-tab/fzf-tab.zsh"

# source "$HOME/.config/zsh/fzf.zsh"

source "$HOME/.config/zsh/env.zsh"
source "$HOME/.config/zsh/functions/pass.zsh"
source "$HOME/.config/zsh/functions/dock.zsh"
source "$HOME/.config/zsh/functions/got.zsh"
source "$HOME/.config/zsh/functions/gt.zsh"
source "$HOME/.config/zsh/functions/gset.zsh"
source "$HOME/.config/zsh/functions/mt.zsh"
source "$HOME/.config/zsh/functions/ww.zsh"
source "$HOME/.config/zsh/functions/fl.zsh"
source "$HOME/.config/zsh/functions/bl.zsh"
source "$HOME/.config/zsh/functions/zz.zsh"
source "$HOME/.config/zsh/functions/rust.zsh"
# source "$HOME/.config/zsh/functions/web_search.zsh"
source "$HOME/.config/zsh/functions/functions.zsh"
source "$HOME/.config/zsh/alias.zsh"
source "$HOME/.config/zsh/git.zsh"
source "$HOME/.config/zsh/use.zsh"
source "$HOME/.config/zsh/dirhistory.zsh"
source "$HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.config/zsh/vim-mode.zsh"
source "$HOME/.config/zsh/zsh-autopair/autopair.zsh"
source "$HOME/.config/zsh/zsh-search-substring/search-substring.zsh"
# source "$HOME/.config/zsh/auto-notify.zsh"
# source "$HOME/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

export PATH="$HOME/.cargo/bin:$PATH"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nitrogen --restore > /dev/null 2>&1

# https://wiki.archlinux.org/title/Xorg/Keyboard_configuration
# $ grep -E "(ctrl|caps):" /usr/share/X11/xkb/rules/base.lst
# caps
# setxkbmap -option "caps:swapescape"
setxkbmap -option "caps:escape"
# setxkbmap -option "caps:ctrl_modifier"
# setxkbmap -option "ctrl:swap_lalt_lctl"
# setxkbmap -option "ctrl:hyper_capscontrol"
# setxkbmap -option "ctrl:swapcaps"
# setxkbmap -option "ctrl:nocaps"
# xcape -e 'Control_L=Escape' -t 100

eval "$(zoxide init zsh)"
. /usr/share/z/z.sh
#
# export PNPM_HOME="$HOME/.local/share/pnpm"
# export PATH="$PNPM_HOME:$PATH"
#
# export DENO_INSTALL="$HOME/.deno"
# # export PATH="$DENO_INSTALL/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#
export GOROOT="/usr/lib/go"
export PATH="$PATH:$GOROOT/bin"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
# export GOPATH="$GOPATH:$HOME/go"
export PATH="$GOPATH/bin:$PATH"
