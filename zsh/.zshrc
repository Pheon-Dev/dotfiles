export ZSH="$HOME/.config/zsh/zsh-base"
source $ZSH/zsh.sh

export STARSHIP_CACHE=~/.starship/cache
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# export EDITOR='$HOME/.config/neovim/build/bin/nvim'
# export VISUAL='$HOME/.config/neovim/build/bin/nvim'
export EDITOR='nvim'
export VISUAL='nvim'

source "$HOME/.config/zsh/zsh-alias/zsh-source-alias.zsh"
source "$HOME/.config/zsh/zsh-plugins/zsh-source-plugins.zsh"
source "$HOME/.config/zsh/zsh-exports.zsh"
