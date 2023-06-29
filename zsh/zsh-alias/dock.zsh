#!/bin/bash

dock () {
  if [[ $1 == "" ]]; then
    echo "$(tput setaf 3)   [ -t, --status ] status of docker daemon"
    echo "$(tput setaf 3)   [ -s, --start  ] start a docker daemon"
    echo "$(tput setaf 3)   [ -p, --pause  ] pause a docker daemon"
    echo "$(tput setaf 3)   [ -x, --stop   ] stop a docker daemon"
    echo "$(tput setaf 3)   [ -u, --up     ] start up a db on docker"
    echo "$(tput setaf 3)   [ -i, --inspect] inspect postgres database"

    return 1
  fi

  if [[ $1 == "-t" || $1 == "--status" ]]; then
    sudo systemctl status docker
  fi

  if [[ $1 == "-s" || $1 == "--start" ]]; then
    sudo systemctl start docker
  fi

  if [[ $1 == "-p" || $1 == "--pause" ]]; then
    sudo systemctl pause docker
  fi

  if [[ $1 == "-x" || $1 == "--stop" ]]; then
    sudo systemctl stop docker
  fi

  if [[ $1 == "-u" || $1 == "--up" ]]; then
    sudo docker-compose up -d
  fi

  if [[ $1 == "-i" || $1 == "--inspect" ]]; then
    sudo docker inspect postgres
  fi

  if [[ $1 == "-r" || $1 == "--run" ]]; then
    sudo docker run --rm 5432:5432 -e "POSTGRES_PASSWORD=postgres" --name pg postgres:15 #14/15
  fi

  if [[ $1 == "-b" || $1 == "--build" ]]; then
    sudo docker buildx . -t postgres:15
    sudo docker buildx build --rm -p 5432:5432 -e 'POSTGRES_PASSWORD=postgres' --name pg postgres:15
  fi
}
