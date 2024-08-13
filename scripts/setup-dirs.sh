#! /usr/bin/env bash

source ./shared.sh

dirs=(
  ~/.local/bin
)
create_dirs() {
  echo "$HR Creating Directories"; 
  for dir in "${dirs[@]}"; do
    if [ ! -d $dir ]; then
      echo "$HR Creating: $dir"
      mkdir -p $dir;
    else
      echo "$HR Exists: $dir"
    fi
  done
}

create_dirs;
