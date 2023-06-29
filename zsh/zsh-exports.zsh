#!/bin/bash zsh
# zmodload zsh/zprof

# https://wiki.archlinux.org/title/Xorg/Keyboard_configuration
# $ grep -E "(ctrl|caps):" /usr/share/X11/xkb/rules/base.lst
setxkbmap -option "caps:escape"
# setxkbmap -option "caps:ctrl_modifier"
# setxkbmap -option "caps:ctrl_modifier"
# setxkbmap -option "ctrl:swap_lalt_lctl"
# xcape -e 'Control_L=Escape'

eval "$(zoxide init zsh)"
. /usr/share/z/z.sh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export PIP_BREAK_SYSTEM_PACKAGES=1
export PATH="$HOME/.cargo/bin:$PATH"

export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"
