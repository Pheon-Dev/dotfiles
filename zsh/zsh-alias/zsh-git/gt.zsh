#!/bin/bash zsh

# TODO: add branch option
_gt_help () {
  echo "$(tput setaf 1) ** Missing Flag Option ** \n"
  echo -n "$(tput setaf 2) gt"
  echo "$(tput setaf 3) <option> \n"
  echo -e "$(tput setaf 5) List of flag options :"
  echo -n "$(tput setaf 3)     --set, -s  "
  echo -n "$(tput setaf 8) →"
  echo -e "$(tput setaf 6) Set Remote URL for Origin"
  echo -n "$(tput setaf 3)     --init, -i "
  echo -n "$(tput setaf 8) →"
  echo -e "$(tput setaf 6) Initialize New Repo \n"

}

_gt_repo () {
  echo "$(tput setaf 1) ** Missing Repo Name ** \n"
  echo -n "$(tput setaf 2) gt"
  echo -n "$(tput setaf 3) <option>"
  echo -n "$(tput setaf 4) <repo> \n\n"
  echo -e "$(tput setaf 5) Repository name :"
  echo -n "$(tput setaf 4)     <repo-name> "
  echo -n "$(tput setaf 8) →"
  echo -e "$(tput setaf 6) Custom Repository Name \n "

}

glb () {
    echo " "
    if [[ $1 == "" ]]; then
      _gt_help
        return 0
    fi

    repo_name=""
    if [[ $1 == "--set" || $1 == "-s" ]]; then
      repo_name=$(git remote -v | grep -E "fetch" | cut -d " " -f 1 | awk 'BEGIN { FS = " " } { print $2 }' | awk 'BEGIN { FS = "/" } { print $5 }' | awk 'BEGIN { FS = "." } { print $1 }')
      echo -n "$(tput setaf 3)  GitLab"
      echo -e "$(tput setaf 6) Remote URL Successfully Set : \n"
      pass-export && git remote set-url origin https://oauth2:$GITLAB_TOKEN@gitlab.com/devpheon/$2.git
    fi

    if [[ $1 == "--init" || $1 == "-i" ]]; then
      if [[ $2 == "" ]]; then
        _gt_repo
          return 0
      fi

      repo_name=$2
      echo -n "$(tput setaf 3)  GitLab"
      echo -e "$(tput setaf 6) Repository Successfully Initialised : \n"
      pass-export && git init > /dev/null 2>&1 && git remote add origin https://githlab.com/devpheon/$repo_name.git && git branch -M main && git remote set-url origin https://oauth2:$GITLAB_TOKEN@gitlab.com/devpheon/$repo_name.git && touch .gitignore README.md
    fi

    echo -n "$(tput setaf 2)      "
    echo -n "$(tput setaf 8) →"
    echo -e "$(tput setaf 4) $repo_name"
    echo -n "$(tput setaf 2)      "
    echo -n "$(tput setaf 8) →"
    echo -n "$(tput setaf 5) "
    git remote -v | grep -E "fetch" | cut -d " " -f 1 | awk 'BEGIN { FS = " " } { print $2 }'
    echo ""
}

gt () {
    echo " "
    if [[ $1 == "" ]]; then
      _gt_help
        return 0
    fi

    repo_name=""
    if [[ $1 == "--set" || $1 == "-s" ]]; then
      repo_name=$(git remote -v | grep -E "fetch" | cut -d " " -f 1 | awk 'BEGIN { FS = " " } { print $2 }' | awk 'BEGIN { FS = "/" } { print $5 }' | awk 'BEGIN { FS = "." } { print $1 }')
      echo -n "$(tput setaf 3)  GitHub"
      echo -e "$(tput setaf 6) Remote URL Successfully Set : \n"
      pass-export && git remote set-url origin https://$GITHUB_TOKEN@github.com/Pheon-Dev/$repo_name.git
    fi

    if [[ $1 == "--init" || $1 == "-i" ]]; then
      if [[ $2 == "" ]]; then
        _gt_repo
          return 0
      fi

      repo_name=$2
      echo -n "$(tput setaf 3)  GitHub"
      echo -e "$(tput setaf 6) Repository Successfully Initialised : \n"
      pass-export && git init > /dev/null 2>&1 && git remote add origin https://github.com/Pheon-Dev/$repo_name.git && git branch -M main && git remote set-url origin https://$GITHUB_TOKEN@github.com/Pheon-Dev/$repo_name.git && touch .gitignore README.md
    fi

    
    echo -n "$(tput setaf 4)      "
    echo -n "$(tput setaf 8) →"
    echo -e "$(tput setaf 4) $repo_name"
    prev=$(git remote -v | grep -E "fetch" | cut -d " " -f 1 | awk 'BEGIN { FS = " " } { print $2 }')
    if [[ $1 == "--set" || $1 == "-s" ]]; then
      echo -n "$(tput setaf 1)      "
      echo -n "$(tput setaf 8) →"
      echo -e "$(tput setaf 1) $prev"
    fi
    echo -n "$(tput setaf 2)      "
    echo -n "$(tput setaf 8) →"
    echo -n "$(tput setaf 2) "
    git remote -v | grep -E "fetch" | cut -d " " -f 1 | awk 'BEGIN { FS = " " } { print $2 }'
    echo ""
}
