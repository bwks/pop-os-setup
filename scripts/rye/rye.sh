#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

install_rye() {
  echo "$HR Install Rye";
  if ! [[ -x "$(command -v rye)" ]]; then
    curl -sSf https://rye.astral.sh/get | RYE_INSTALL_OPTION="--yes" bash;
  fi
}

configure_rye() {
  echo "$HR Configure Rye";
  echo 'source "$HOME/.rye/env"' > ~/.zshrc.local/rye_rc
}

install_rye;
configure_rye;
