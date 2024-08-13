#! /usr/bin/bash

HR="=>"

install_package() {
  CMD="$1"
  echo "$HR Checking if $CMD is installed";
  if ! [[ -x "$(command -v $CMD)" ]]; then
    echo "$HR $CMD is not currently installed.";
    echo "$HR Installing $CMD";
    sudo apt install -y $CMD;
  else
    echo "$HR $CMD is already installled";
  fi
}

