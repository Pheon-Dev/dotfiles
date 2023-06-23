#!/bin/bash zsh
# nmcli dev wifi show
ww () {
  help () {
      echo "$(tput setaf 1) ** Missing Connection Option ** \n"
      echo -n "$(tput setaf 2) ww"
      echo -n "$(tput setaf 3) <option> \n"
      echo " "
      echo -e "$(tput setaf 5) List of flag options :"
      echo -n "$(tput setaf 3)     -t, --toggle "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      Toggle WiFi ON|OFF"
      echo -n "$(tput setaf 3)     -d, --disconnect "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)  Disconnect WiFi connection"
      echo -n "$(tput setaf 3)     -s, --status "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      Show WiFi status"
      echo -n "$(tput setaf 3)     -n, --radio-on "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)    Turn WiFi radio on"
      echo -n "$(tput setaf 3)     -f, --radio-off "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)   Turn WiFi radio off"
      echo -n "$(tput setaf 3)     -i, --info "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)        Show more WiFi info"
      echo -n "$(tput setaf 3)     -u, --nmtui "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)       TUI Network Manager"
      echo -n "$(tput setaf 3)     -g, --gui "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)        GUI connection editor"
      echo -n "$(tput setaf 3)     -r, --restart "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)        Restart the Network Manager"
      echo -n "$(tput setaf 3)     -e, --ethernet "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)    Ethernet connection"
      echo -n "$(tput setaf 3)     -h, --help "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)        Show this help info \n"
      return 1
  }
  if [[ $1 == "-t" || $1 == "--toggle" ]]; then
    wifi toggle
    return 1
  fi
  if [[ $1 == "-r" || $1 == "--restart" ]]; then
    sudo systemctl restart NetworkManager
    return 1
  fi
  if [[ $1 == "-d"  || $1 == "--disconnect" ]]; then
    nmcli dev disconnect $2
    return 1
  fi
  if [[ $1 == "-s" || $1 == "--status"  ]]; then
    nmcli dev status
    return 1
  fi
  if [[ $1 == "-n" || $1 == "--radio-on"  ]]; then
    nmcli dev radio on
    return 1
  fi
  if [[ $1 == "-f" || $1 == "--radio-off"  ]]; then
    nmcli dev radio off
    return 1
  fi
  if [[ $1 == "-i" || $1 == "--info"  ]]; then
    nmcli --show-secrets connection show
    return 1
  fi
  if [[ $1 == "-e" || $1 == "--ethernet"  ]]; then
    if [[ $2 == "-s" || $2 == "--show"  ]]; then
        nmcli connection show "$3"
    fi

    if [[ $2 == "-c" || $2 == "--connect"  ]]; then
        nmcli connection up "$3"
    fi
    return 1
  fi
  if [[ $1 == "-h" || $1 == "--help"  ]]; then
    help
    return 1
  fi
  if [[ $1 == "-g" || $1 == "--gui"  ]]; then
    nm-connection-editor
    return 1
  fi
  if [[ $1 == "-u" || $1 == "--nmtui"  ]]; then
    nmtui
    return 1
  fi
  clear
  search="h";
  echo " "
  echo "$(tput setaf 2)Searching for available connections ..."
  nmcli dev wifi list > /dev/null 2>&1
  until [ "$search" = "" ]; do
    echo "$(tput setaf 2)\e[1A\e[K List of available connections ..."
    printf "\n"
    connections=$(nmcli dev wifi list | awk 'BEGIN { FS = "\n" } NR==1 {next;} { print $1}')
    echo "$(tput setaf 6)$connections"
    printf "\n"
    echo -n "$(tput setaf 5)Press [Enter] if preferred connection is listed above or [any character] + [Enter] to reload: "
    search=1
    read -r search
    clear
  done

  nmcli dev wifi list | awk 'BEGIN { FS = "\n" } NR==1 {next;} { print $1}' | awk 'BEGIN { FS = " " } { print ($1 =="*")? ($4 =="Infra")? $2 "    " $3 : $2 "    " $3 " " $4 : ($3 =="Infra")? $1 "    " $2: $1 "    " $2 " " $3 }' | gum filter | awk 'BEGIN { FS = " " } { print ($1 =="*")? $2: $1 }' | xargs nmcli dev wifi connect
}

we () {
 nmcli connection add con-name new-enp1s0 ifname enp1s0 type ethernet ip4 192.168.7.31/24 gw4 192.168.7.1                                       12:30:13
}
