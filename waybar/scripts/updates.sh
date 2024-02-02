#!/bin/bash

# Prints out the number of pacman updates (Arch Linux)
# Requires an internet connection
# Depends on yay and checkupdates (pacman-contrib)
# Optional: add --devel flag to the yay cmd to check for *-git package updates.

PREFIX='  '

get_updates()
{
    if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
        updates_arch=0
    fi

    if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
        updates_aur=0
    fi

    updates=$(("$updates_arch" + "$updates_aur"))

    echo "$PREFIX$updates"
}

if [ $(( 10#$(date '+%M') % 3 )) -eq 0 ] && [ $(( 10#$(date '+%S') )) -eq 5 ]; then
    get_updates
fi
