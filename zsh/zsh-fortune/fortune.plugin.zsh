#!/usr/bin/env zsh

if ! type fortune > /dev/null; then
  echo '[run] brew install fortune'
elif ! type lolcat > /dev/null; then
  echo '[run] yay -S lolcat'
else
  fortune | lolcat
fi

