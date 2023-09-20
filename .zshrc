export ZSH="$HOME/.config/zsh/zsh-base"
source $ZSH/zsh.sh

export STARSHIP_CACHE=~/.starship/cache
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

export EDITOR='nvim'
export VISUAL='nvim'

source "$HOME/.config/zsh/zsh-alias/zsh-source-alias.zsh"
source "$HOME/.config/zsh/zsh-plugins/zsh-source-plugins.zsh"
source "$HOME/.config/zsh/zsh-exports.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
