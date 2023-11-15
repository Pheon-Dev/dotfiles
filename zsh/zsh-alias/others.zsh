#!/bin/bash zsh

kb () {
  # for i in $(seq 1 10); do
  #   echo $i
  # done
  # https://wiki.archlinux.org/title/Xorg/Keyboard_configuration
  # $ grep -E "(ctrl|caps):" /usr/share/X11/xkb/rules/base.lst
  setxkbmap -option "caps:escape"
  # setxkbmap -option "caps:ctrl_modifier"
  # setxkbmap -option "ctrl:swap_lalt_lctl"
  # xcape -e 'Control_L=Escape'
}

time-zsh () {
  for i in $(seq 1 10); do
    time $SHELL -i -c exit;
  done
}

v23 () {
  find . -type f -name "*.mkv" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -c:a libmp3lame -y "${FILE%.mkv}.mp3";rm -rf $FILE' _ '{}' \;
}

ytl () {
  help () {
      echo "$(tput setaf 1) ** Missing Connection Option ** \n"
      echo -n "$(tput setaf 2) ytl"
      echo -n "$(tput setaf 3) <option> \n"
      echo " "
      echo -e "$(tput setaf 5) List of flag options :"
      echo -n "$(tput setaf 3)     -a, --audio "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      download audio only"
      echo -n "$(tput setaf 3)     -v, --video "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      download video only"
      echo -n "$(tput setaf 3)     -vp, --vplaylist "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      download video playlist"
      echo -n "$(tput setaf 3)     -p, --playlist "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      download audio playlist"
      echo -n "$(tput setaf 3)     -f, --force "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      force download video only"
      echo -n "$(tput setaf 3)     -h, --help "
      echo -n "$(tput setaf 8)  →"
      echo -e "$(tput setaf 6)       Show this help info \n"
      return 1
  }
  if [[ $1 == "" || $1 == "-h" || $1 == "--help" ]]; then
    echo ""
    help
    echo ""
  fi
  if [[ $1 == "-p" || $1 == "--playlist" ]]; then
    echo ""
    yt-dlp -x -f bestaudio -I $3 $2
    echo ""
  fi
  if [[ $1 == "-vp" || $1 == "--vplaylist" ]]; then
    echo ""
    yt-dlp -f bestaudio -I $3 $2
    echo ""
  fi
  if [[ $1 == "-a" || $1 == "--audio" ]]; then
    echo ""
    yt-dlp -x -f bestaudio $2
    echo ""
  fi
  if [[ $1 == "-v" || $1 == "--video" ]]; then
    echo ""
    yt-dlp --external-downloader aria2c --external-downloader-args '-c -j 3 -x 3 -s 3 -k 1M' $2
    echo ""
  fi
  if [[ $1 == "-f" || $1 == "--force" ]]; then
    echo ""
    yt-dlp --ignore-errors --continue --no-overwrites --download-archive progress.txt usual options $2
    echo ""
  fi
}

ports () {
  help () {
      echo "$(tput setaf 1) ** Missing Connection Option ** \n"
      echo -n "$(tput setaf 2) ports"
      echo -n "$(tput setaf 3) <option> \n"
      echo " "
      echo -e "$(tput setaf 5) List of flag options :"
      echo -n "$(tput setaf 3)     -l, --list "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      List port status"
      echo -n "$(tput setaf 3)     -k, --kill "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      Kill port"
      echo -n "$(tput setaf 3)     -h, --help "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 6)      Show this help info \n"
      return 1
  }
  if [[ $1 == "" || $1 == "-h" || $1 == "--help" ]]; then
    echo ""
    help
    echo ""
  fi
  if [[ $1 == "-l" || $1 == "--list" ]]; then
    echo ""
    echo -e "$(tput setaf 5)Port                 PID"
    echo -e "$(tput setaf 6)"
    sudo fuser $2/tcp
    echo ""
  fi
  if [[ $1 == "-k" || $1 == "--kill" ]]; then
    echo ""
    echo -e "$(tput setaf 5)Port                 PID"
    echo -e "$(tput setaf 6)"
    sudo fuser -k $2/tcp
    echo ""
  fi
}

ex () {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2)    tar xjf $1    ;;
      *.tar.gz)     tar xzf $1    ;;
      *.bz2)        bunzip2 $1    ;;
      *.rar)        unrar x $1    ;;
      *.gz)         gunzip $1     ;;
      *.tar)        tar xf $1     ;;
      *.tbz2)       tar xjf $1    ;;
      *.tgz)        tar xzf $1    ;;
      *.zip)        unzip $1      ;;
      *.Z)          uncompress $1 ;;
      *.7z)         7z x $1       ;;
      *.deb)        ar x $1       ;;
      *.tar.xz)     tar xf $1     ;;
      *.tar.zst)    unzstd $1     ;;
      *)            echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

cm () {
  mkdir $1 && cd $1
}

ed() {
    fzf --preview 'bat --style=numbers --color=always --line-range :500 {}' | xargs nvim
}

lk () {
    regex='(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>">\):]'
    url=$(grep -Po "$regex" | dmenu -p "Go:" -w "$WINDOWID") || exit
    $BROWSER "$url"
}

# DOCKER
dtag () {
    docker tag local-image:$1 new-repo:$1
}

dpsh () {
    docker push new-repo:$1
}

# PLANETSCALE
pscon () {
    pscale connect $1 $2 --port $3  # 1: db, 2: branch, 3: port
}

pscll () {
    pscale shell $1 $2  # 1: db, 2: branch
}

# YARN
ynx () {
    yarn create next-app "$2" --typescript
}

yae () {
    yarn workspace "$1" add --ignore-engines "$2"
}

yag () {
    yarn workspace "$1" global add "$2"
}

yad () {
    yarn workspace "$1" add "$2" --dev
}

yat () {
    yarn workspace "$1" add "$2"
}

yar () {
    yarn workspace "$1" remove "$2"
}

# yta () {
#     youtube-dl --extract-audio --audio-format mp3 "$1" --playlist-start "$2"
# }

# SOURCING FILES
psou () {
    source ~/.p10k.zsh
}

tsou () {
    tmux source ~/.tmux.conf
}

zsou () {
    source ~/.zshrc
}

bsou () {
    source ~/.bashrc
}

# show profile
dep() {
    pnpm run build && firebase deploy --only hosting:"$1" && lazygit
}

# Copy Buffer
cpb() {
    if which clipcopy &>/dev/null; then
        printf "%s" "$BUFFER" | clipcopy
    else
        zle -M "clipcopy not found. Please make sure you have Zsh installed correctly."
    fi
}

zle -N cpb

bindkey -M emacs "^O" cpb
bindkey -M viins "^O" cpb
bindkey -M vicmd "^O" cpb

# Copy directory
function cpd() {
    emulate -L zsh
    print -n $PWD | clipcopy
}

# Copy file
function cpf() {
    emulate -L zsh
    clipcopy $1
}

# set ft=zsh

progress-bar() {
    local duration=${1}


    already_done() { for ((done=0; done<$elapsed; done++)); do printf "▇"; done }
    remaining() { for ((remain=$elapsed; remain<$duration; remain++)); do printf " "; done }
    percentage() { printf "| %s%%" $(( (($elapsed)*100)/($duration)*100/100 )); }
    clean_line() { printf "\r"; }

    for (( elapsed=1; elapsed<=$duration; elapsed++ )); do
        already_done; remaining; percentage
        sleep 1
        clean_line
    done
    clean_line
}

zap() {
    source "./progress.zsh"

    function run_scripts {
        CURRENT_PERCENTAGE=$1

        DUMMY_CUMPUTING_DELAY=$(( ( RANDOM % 20 ) / 10 ))  # Replace by zero

        git clone https://github.com/zap-zsh/zap.git > /dev/null 2>&1
        sleep $DUMMY_CUMPUTING_DELAY

        sleep $PROGRESS_DELAY
    }

    echo
    progress 0; progress 100
    echo
    echo ""
    echo " Zapped"
}
