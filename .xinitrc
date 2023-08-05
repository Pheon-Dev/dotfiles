#!/sbin/sh

nitrogen --restore 2>/dev/null
setxkbmap -option "caps:escape"

# exec dwm
