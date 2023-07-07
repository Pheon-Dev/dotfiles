#!/sbin/sh

nitrogen --restore 2>/dev/null

# systemctl --user import-environment DISPLAY

exec dwm
