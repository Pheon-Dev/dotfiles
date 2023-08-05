#!/sbin/sh

nitrogen --restore 2>/dev/null
setxkbmap -option "caps:escape"

# systemctl --user import-environment DISPLAY

exec dwm
