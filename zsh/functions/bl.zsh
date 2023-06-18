#!/bin/bash

# BLUETOOTH
# alias blf='systemctl stop bluetooth'
# alias bln='systemctl start bluetooth'
alias blf='bluetooth off'
alias bln='bluetooth on'
alias bls="bluetoothctl scan on"
alias blc="bluetoothctl connect CC:98:8B:A7:BB:38"
alias blr="bluetoothctl connect"
alias bli="bluetoothctl info"
alias bld="bluetoothctl disconnect CC:98:8B:A7:BB:38"
alias blp="bluetoothctl pair CC:98:8B:A7:BB:38"
# alias bl="systemctl start bluetooth && bluetoothctl connect CC:98:8B:A7:BB:38"
alias bl="bluetoothctl connect CC:98:8B:A7:BB:38"
bkjhl () {

# Define the MAC address of the device to search for
target_device="CC:98:8B:A7:BB:38"
# target_device=$(bluetoothctl scan on | gum filter)

# Run bluetoothctl command to scan for devices
bluetoothctl scan on &

# Loop until target device is found
while true; do
    # Read the output of the bluetoothctl command line by line
    while read -r line; do
        # If the line contains the MAC address of the target device, exit the script
        if [[ "$line" == *"$target_device"* ]]; then
            echo "Device found!"
            bluetoothctl connect $target_device
            echo "Device connected!"
            pkill bluetoothctl
            return 1
        fi
    done < <(bluetoothctl info)

    # Wait for 1 second before checking the output again
    sleep 1
done
}

blhgdfh () {
  help () {
      echo "$(tput setaf 1) ** Missing Connection Option ** \n"
      echo -n "$(tput setaf 2) bl"
      echo -n "$(tput setaf 3) <option> \n"
      echo " "
      echo -e "$(tput setaf 5) List of flag options :"
      echo -n "$(tput setaf 3)     -d, --disconnect "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)  Disconnect Bluetooth connection"
      echo -n "$(tput setaf 3)     -s, --scan "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      Scan for Bluetooth devices"
      echo -n "$(tput setaf 3)     -s, --status "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      Show Bluetooth status"
      echo -n "$(tput setaf 3)     -n, --on "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)    Turn Bluetooth on"
      echo -n "$(tput setaf 3)     -f, --off "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)   Turn Bluetooth off"
      echo -n "$(tput setaf 3)     -i, --info "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)        Show more WiFi info"
      echo -n "$(tput setaf 3)     -h, --help "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)        Show this help info \n"
      return 1
  }
  read -r option
  if [[ $1 == "-n" || $1 == "--on" || $option == "n" ]]; then
    bluetooth on
    return 1
  fi
  if [[ $1 == "-" || $1 == "--off"  || $option == "f" ]]; then
    bluetooth off
    return 1
  fi
  if [[ $1 == "-s" || $1 == "--scan" || $option == "s" ]]; then
    wifi toggle
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
    bluetoothctl scan on
    printf "\n"
    echo -n "$(tput setaf 6)Press [Enter] if preferred connection is listed above or [any character] + [Enter] to reload: "
    search=1
    read -r search
    clear
  done

  nmcli dev wifi list | awk 'BEGIN { FS = "\n" } NR==1 {next;} { print $1}' | awk 'BEGIN { FS = " " } { print ($1 =="*")? ($4 =="Infra")? $2 "    " $3 : $2 "    " $3 " " $4 : ($3 =="Infra")? $1 "    " $2: $1 "    " $2 " " $3 }' | gum filter | awk 'BEGIN { FS = " " } { print ($1 =="*")? $2: $1 }' | xargs nmcli dev wifi connect
}
