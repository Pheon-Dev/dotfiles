#!/usr/bin/zsh

[ -n "$ZSH_VERSION" ] || {
  # ANSI formatting function (\033[<code>m)
  # 0: reset, 1: bold, 4: underline, 22: no bold, 24: no underline, 31: red, 33: yellow
  zsh_f() {
    [ $# -gt 0 ] || return
    IFS=";" printf "\033[%sm" $*
  }
  # If stdout is not a terminal ignore all formatting
  [ -t 1 ] || zsh_f() { :; }

  zsh_ptree() {
    # Get process tree of the current process
    pid=$$; pids="$pid"
    while [ ${pid-0} -ne 1 ] && ppid=$(ps -e -o pid,ppid | awk "\$1 == $pid { print \$2 }"); do
      pids="$pids $pid"; pid=$ppid
    done

    # Show process tree
    case "$(uname)" in
    Linux) ps -o ppid,pid,command -f -p $pids 2>/dev/null ;;
    Darwin|*) ps -o ppid,pid,command -p $pids 2>/dev/null ;;
    esac

    # If ps command failed, try Busybox ps
    [ $? -eq 0 ] || ps -o ppid,pid,comm | awk "NR == 1 || index(\"$pids\", \$2) != 0"
  }

  {
    shell=$(ps -o pid,comm | awk "\$1 == $$ { print \$2 }")
    printf "$(zsh_f 1 31)Error:$(zsh_f 22) zsh can't be loaded from: $(zsh_f 1)${shell}$(zsh_f 22). "
    printf "You need to run $(zsh_f 1)zsh$(zsh_f 22) instead.$(zsh_f 0)\n"
    printf "$(zsh_f 33)Here's the process tree:$(zsh_f 22)\n\n"
    zsh_ptree
    printf "$(zsh_f 0)\n"
  } >&2

  return 1
}

if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="$ZSH/cache"
fi

# Make sure $ZSH_CACHE_DIR is writable, otherwise use a directory in $HOME
if [[ ! -w "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
fi

# Create cache and completions dir and add to $fpath
mkdir -p "$ZSH_CACHE_DIR/completions"
(( ${fpath[(Ie)"$ZSH_CACHE_DIR/completions"]} )) || fpath=("$ZSH_CACHE_DIR/completions" $fpath)

# Initializes zsh

# add a function path
fpath=("$ZSH/functions" "$ZSH/completions" $fpath)

# Load all stock functions (from $fpath files) called below.
autoload -U compaudit compinit

if [[ "$ZSH_DISABLE_COMPFIX" != true ]]; then
  source "$ZSH/lib/compfix.zsh"
  # Load only from secure directories
  compinit -i -d "$ZSH_COMPDUMP"
  # If completion insecurities exist, warn the user
  # handle_completion_insecurities &|
else
  # If the user wants it, load from all found directories
  compinit -u -d "$ZSH_COMPDUMP"
fi

# Load all of the config files in ~/zsh that end in .zsh
# TIP: Add files you don't want in git to .gitignore
for config_file ("$ZSH"/lib/*.zsh); do
  custom_config_file="$ZSH_CUSTOM/lib/${config_file:t}"
  [[ -f "$custom_config_file" ]] && config_file="$custom_config_file"
  source "$config_file"
done
unset custom_config_file
