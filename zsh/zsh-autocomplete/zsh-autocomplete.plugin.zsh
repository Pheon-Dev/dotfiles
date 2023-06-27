#!/bin/zsh
unsetopt listbeep

() {
  zmodload -F zsh/parameter p:funcfiletrace
  zmodload zsh/param/private

  typeset -ga _autocomplete__func_opts=(
    localoptions extendedglob clobber
    NO_aliases localloops pipefail NO_shortloops NO_unset warncreateglobal
  )
  setopt $_autocomplete__func_opts[@]

  typeset -ga _autocomplete__funcfiletrace=( $funcfiletrace )

  local basedir=${${(%):-%x}:P:h}
  hash -d autocomplete=$basedir zsh-autocomplete=$basedir

  builtin autoload +X -Uz ~autocomplete/Functions/**/.autocomplete:*~*.zwc(D-:)
  .autocomplete:__main__ "$@"
} 

source "$HOME/.config/zsh/functions/cmp.zsh"
() {
   local -a prefix=( '\e'{\[,O} )
   local -a up=( ${^prefix}A ) down=( ${^prefix}B )
   local key=
   for key in $up[@]; do
      bindkey "$key" up-line-or-history
   done
   for key in $down[@]; do
      bindkey "$key" down-line-or-history
   done
}
