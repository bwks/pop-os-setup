#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

setup_vscode() {
  if [[ ! -f /etc/apt/sources.list.d/vscode.list ]]; then
    echo "$HR Setting up VSCode"
    
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg;
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg;
    echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null;
    rm -f packages.microsoft.gpg;
    
    sudo apt update;
  
  fi
}

install_vscode() {

  if ! [[ -x "$(command -v code)" ]]; then
    echo "$HR Installing VSCode";
    install_package code;
  else
    echo "$HR VSCode already installed";
  fi
}

setup_vscode;
install_vscode;
