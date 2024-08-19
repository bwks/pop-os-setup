#! /usr/bin/bash 

source $(dirname "$0")/../shared.sh;

install_typst() {
  if [[ -x "$(command -v cargo)" ]]; then
    echo "$HR installing typst-cli";
    cargo install typst-cli;
  else
    echo "$HR Cargo required to install typst-cli";
  fi
}

install_typst;