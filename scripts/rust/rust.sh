#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

install_rust() {
  echo "$HR Installing Rust";
  if ! [[ -x "$(command -v cargo)" ]]; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y;
  fi
}

install_rust;
