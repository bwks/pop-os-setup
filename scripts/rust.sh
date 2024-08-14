#! /usr/bin/bash

source ./shared.sh 

install_rust() {
  echo "$HR Installing Rust"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
}

install_rust;
