#!/bin/bash zsh
pass-export () {
  # password management
  export PASS_PUB_KEY=$(pass show pass/pub-key)
  export GITHUB_TOKEN=$(pass show github/token)
  export GITLAB_TOKEN=$(pass show gitlab/token)
  export OPENAI_API_KEY=$(pass show api-key/bb-token)
  # export INFOBIP_API_KEY=$(pass show infobip/API)
  # export HUGGING_FACE_HUB_TOKEN=$(pass show hugging-face/token)
}

alias gpg-gen="gpg --gen-key" #generate new key
alias gpg-pub-key="gpg -K" # show pub key
alias gpg-edit="gpg --edit-key $PASS_PUB_KEY" # set expiry date command: expire, trust then save 

# mkdir exported-keys && cd
alias gpg-pub-out="gpg --output public.pgp --armor --export devpheon@gmail.com"
alias gpg-pvt-out="gpg --output private.pgp --armor --export-secret-key devpheon@gmail.com"
alias gpg-scp="scp -r pheon@pheon-dev:exported-keys ."
alias gpg-pub-import="gpg --import public.pgp"
alias gpg-pvt-import="gpg --import private.pgp"

alias pass-init="pass init $PASS_PUB_KEY" # initialize
alias pass-ginit="pass git init"
alias pass-insert="pass insert" # name or name/sub-name
alias pass-edit="pass edit" # name or name/sub-name
alias pass-gen="pass generate" # name
alias pass-find="pass find" # name
alias pass-list="pass"
alias pass-show="pass show -c" # name
alias pass-grep="pass grep" # 'name'
alias pass-rm="pass rm" # name
alias pass-remote="pass git remote add origin https://$GITHUB_TOKEN@github.com/Pheon-Dev/pwd-store.git"
alias pass-revert="pass git revert HEAD"
alias pass-branch="git branch -m" # main
alias pass-push="pass git push origin main"
