#!/bin/zsh

alias mntl="sudo lsblk -l" # fdisk
mntd () {
    sudo lsblk -l && sudo mkdir /mnt/"$1" #blkid
}

mntm () {
    sudo mount /dev/sd"$1""$2" /mnt/"$3"
}

mntu () {
    sudo umount /mnt/"$1"
}

mt () {
  clear
  echo "$(tput setaf 6)"
  lsblk -a
  echo ""
  echo "$(tput setaf 2)  [ Enter ] to continue"
  echo "$(tput setaf 1)  [ C-c | q | Q ] to Quit \n"
  echo -n "$(tput setaf 5) ● Enter one option from the list above to continue : "
  read -r continue
  if [[ $continue == "q" || $continue == "Q" || $continue == "n" || $continue == "N" ]]; then
    echo ""
      echo "$(tput setaf 2) Good Bye! \n"
    return 0
  fi
  clear
  echo ""
  echo "$(tput setaf 2) ∆ [ Enter ] to Mount"
  echo "$(tput setaf 1) ∇ [ u | U ] to Unmount \n"
  echo -n "$(tput setaf 5) ● Enter one option from the list above to continue : "
  read -r continue
  if [[ $continue == "u" || $continue == "U" ]]; then
    if find /mnt -mindepth 1 -maxdepth 1 | read; then
        echo "$(tput setaf 1)"
        mount_loc=$(sudo ls /mnt | gum filter)
        sudo umount /mnt/$mount_loc
        sudo rm -rf /mnt/$mount_loc
        echo " "
        echo -n "$(tput setaf 6) Mount Point : "
        echo -e "$(tput setaf 7) $mount_loc \n"
        echo -e "$(tput setaf 2) Unounted Successfully! \n"
    else
      echo "$(tput setaf 1) No Mountpoint Found \n"
    fi
      echo "$(tput setaf 2) Good Bye! \n"
    return 0
  fi
  echo ""
  echo -n "$(tput setaf 2) ● Enter mount point name : "
  read -r mount_point
  sudo mkdir /mnt/$mount_point
  echo "$(tput setaf 1)"
  drive=$(sudo lsblk -l | awk 'BEGIN { FS = "\n" } NR==1 {next;} { print $1 }' | gum filter | awk 'BEGIN { FS = " " } { print $1 }')
  echo ""
  sudo mount /dev/$drive /mnt/$mount_point
  echo -n "$(tput setaf 6) Drive : "
  echo -e "$(tput setaf 7) $drive"
  echo -n "$(tput setaf 6) Mount Point : "
  echo -e "$(tput setaf 7) $mount_point \n"
  echo -e "$(tput setaf 2) Mounted Successfully! \n"
  echo "$(tput setaf 2) Good Bye! \n"
  return 0
}
