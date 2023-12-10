#!/bin/bash zsh

alias pscale-auth="pscale auth login"
alias pscale-install="brew install planetscale/tap/pscale"

pscale-connect () {
  # $1 database $2 branch
  pscale connect $1 $2
}

pscale-create-pr () {
  # $1 database $2 branch
  pscale deploy-request create $1 $2
}

pscale-diff () {
  # $1 database $2 request number
  pscale deploy-request diff $1 $2
}

pscale-deploy () {
  # $1 database $2 request number
  pscale deploy-request deploy $1 $2
}

pscale-promote () {
  # $1 database $2 branch
  pscale branch promote $1 $2
}

pscale-create-db () {
  # $1 database name
  pscale db create $1
}

pscale-list-db () {
  # $1 database name
  pscale db ls
}

pscale-create-branch () {
  # $1 database $2 branch
  pscale branch create $1 $2
}

pscale-delete-branch () {
  # $1 database $2 branch
  pscale branch delete $1 $2
}
