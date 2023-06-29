#!/bin/bash

# ZELLIJ
alias zf="zellij edit --floating --"
alias zr='zellij run --floating --'

zz () {
  clear
  if [[ $1 == "" ]]; then
  echo ""
  echo -n "$(tput setaf 3)   "
  echo -n "$(tput setaf 4)  [ ⏎ ]"
  echo -e "$(tput setaf 5) start a new session"
  echo -n "$(tput setaf 3)   "
  echo -n "$(tput setaf 4)  [ d ]"
  echo -e "$(tput setaf 5) default session"
  echo -n "$(tput setaf 3)   "
  echo -n "$(tput setaf 4)  [ z ]"
  echo -e "$(tput setaf 5) default compact session"
  echo -n "$(tput setaf 3)   "
  echo -n "$(tput setaf 4)  [ s ]"
  echo -e "$(tput setaf 5) list active sessions"
  echo -n "$(tput setaf 3)   "
  echo -n "$(tput setaf 4)  [ a ]"
  echo -e "$(tput setaf 5) attach to a session"
  echo -n "$(tput setaf 3)   "
  echo -n "$(tput setaf 4)  [ l ]"
  echo -e "$(tput setaf 5) list available layouts"
  echo -n "$(tput setaf 3)   "
  echo -n "$(tput setaf 4)  [ h ]"
  echo -e "$(tput setaf 5) help"
  echo -n "$(tput setaf 1)   "
  echo -n "$(tput setaf 1)  [ C-c | q | Q ]"
  echo -e "$(tput setaf 1) to Quit \n"
  echo -n "$(tput setaf 2) Enter one of the above command options to continue : "
  read -r option
  if [[ $option == "q" || $option == "Q" ]]; then
    echo ""
    echo -n "$(tput setaf 3) Good Bye! \n"
    echo ""
    return 1
  fi
  fi
  if [[ $1 == "-h" || $1 == "--help" || $option == "h" ]]; then
    clear
    echo "$(tput setaf 1) ** Missing Layout Option ** \n"
    echo -n "$(tput setaf 2) zz"
    echo -n "$(tput setaf 3) <option> \n"
    echo " "
    echo -e "$(tput setaf 5) Available options : \n"
    echo -n "$(tput setaf 3)    -d, --default"
    echo -n "$(tput setaf 6)    default zellij layout \n"
    echo -n "$(tput setaf 3)    -l, --layout"
    echo -n "$(tput setaf 6)    list of layout options \n"
    echo -n "$(tput setaf 3)    -s, --active"
    echo -n "$(tput setaf 6)    list active sessions \n"
    echo -n "$(tput setaf 3)    -a, --attach"
    echo -n "$(tput setaf 6)    attach an active session \n"
    echo -n "$(tput setaf 3)    -z, --zellij-compact"
    echo -n "$(tput setaf 6)    default compact-zellij layout \n"
    echo -n "$(tput setaf 3)    -h, --help"
    echo -n "$(tput setaf 6)      show this help \n"
    echo " "
    return 1
  fi
  if [[ $1 == "-a" || $1 == "--attach" || $option == "a" ]]; then
    clear
    sessions=$(zellij list-sessions)
    echo -e "$(tput setaf 5) List of running sessions ... \n"
    echo -e "$(tput setaf 2) - $sessions"
    attach_session=$(echo "$sessions" | gum filter)
    if [[ -z $attach_session ]]; then echo "no sessions available"; fi
    clear
    zellij attach $attach_session
    echo " "
    return 1
  fi
  if [[ $1 == "-l" || $1 == "--layout" || $option == "l" ]]; then
    clear
    layouts=$(ls "$HOME/.config/zellij/layouts" | awk 'BEGIN { FS = "\n" } { print " " echo "    " $1 }' | cut -d "." -f 1)
    echo -e "$(tput setaf 5) List of available layouts \n"
    echo -n "$(tput setaf 6)$layouts"
    echo " "
    echo " "
    return 1
  fi
  if [[ $1 == "-s" || $1 == "--active" || $option == "s" ]]; then
    clear
    sessions=$(zellij list-sessions)
    echo -e "$(tput setaf 5) List of running sessions ... \n"
    for a in $sessions; do
      echo -e "$(tput setaf 2) - $a"
    done
    return 1
  fi
  if [[ $1 == "-z" || $1 == "--zellij-compact" || $option == "z" ]]; then
    clear
    zellij -l compact
    return 1
  fi
  if [[ $1 == "-d" || $1 == "--default" || $option == "d" ]]; then
    clear
    zellij
    return 1
  fi
  if [[ $1 == "" || $option == "" ]]; then
    clear
    layout=$(ls "$HOME/.config/zellij/layouts" | awk 'BEGIN { FS = "\n" } { print $1 }' | cut -d "." -f 1)
    new_session=$(echo $layout | awk 'BEGIN { FS = " " } { print $2 }' | gum filter)
    zellij -l $HOME/.config/zellij/layouts/$new_session.kdl --session $new_session
    clear
  fi
}

