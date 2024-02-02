#!/sbin/sh
#
echo foo | xclip -i

feh --bg-center ~/.config/dwm/wall/katana.jpg --bg-fill ~/.config/dwm/wall/shinobu.jpg &

# setxkbmap -option "caps:escape"

dwmbar &
exec dwm
