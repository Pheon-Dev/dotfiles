# zmodload zsh/zprof

export ZSH="$HOME/.config/zsh/zsh"
source $ZSH/zsh.sh

export STARSHIP_CACHE=~/.starship/cache
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

export EDITOR='nvim'
export VISUAL='nvim'

source "$HOME/.config/zsh/functions/functions.zsh"
source "$HOME/.config/zsh/alias.zsh"
source "$HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.config/zsh/vim-mode.zsh"
source "$HOME/.config/zsh/zsh-autopair/autopair.zsh"
source "$HOME/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

# source "$HOME/.config/zsh/zsh-search-substring/search-substring.zsh"
# source "$HOME/.config/zsh/auto-notify.zsh"
# source "$HOME/.config/zsh/fzf-tab/fzf-tab.zsh"
# source "$HOME/.config/zsh/fzf.zsh"
# source "$HOME/.config/zsh/dirhistory.zsh"

eval "$(zoxide init zsh)"
. /usr/share/z/z.sh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export PIP_BREAK_SYSTEM_PACKAGES=1
export PATH="$HOME/.cargo/bin:$PATH"

# https://wiki.archlinux.org/title/Xorg/Keyboard_configuration
# $ grep -E "(ctrl|caps):" /usr/share/X11/xkb/rules/base.lst

setxkbmap -option "caps:escape"
# setxkbmap -option "caps:ctrl_modifier"

# setxkbmap -option "caps:ctrl_modifier"
# setxkbmap -option "ctrl:swap_lalt_lctl"
# xcape -e 'Control_L=Escape'
