export ZSH="$HOME/.config/zsh/zsh-base"
source $ZSH/zsh.sh

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

source "$HOME/.config/zsh/zsh-exports.zsh"
source "$HOME/.config/zsh/zsh-alias/zsh-source-alias.zsh"
source "$HOME/.config/zsh/zsh-plugins/zsh-source-plugins.zsh"

# eval "$(starship init zsh)"
zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship
