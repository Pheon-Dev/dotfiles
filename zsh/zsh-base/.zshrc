# zmodload zsh/zprof

export ZSH="$HOME/.config/zsh/zsh"
source $ZSH/zsh.sh

export STARSHIP_CACHE=~/.starship/cache
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

export EDITOR='nvim'
export VISUAL='nvim'

source "$HOME/.config/zsh/functions/init.zsh"
source "$HOME/.config/zsh/alias.zsh"
source "$HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.config/zsh/vim-mode.zsh"
source "$HOME/.config/zsh/zsh-autopair/autopair.zsh"
source "$HOME/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
source "$HOME/.config/zsh/fzf.zsh"

eval "$(zoxide init zsh)"
. /usr/share/z/z.sh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export PIP_BREAK_SYSTEM_PACKAGES=1
export PATH="$HOME/.cargo/bin:$PATH"

export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"
