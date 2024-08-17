#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

install_zellij() {
  if ! [[ -x "$(command -v zellij)" ]]; then
    echo "$HR Downloading Zellij";
    cd /tmp/;
    curl -s https://api.github.com/repos/zellij-org/zellij/releases/latest \
      | grep "browser_download_url.*zellij-x86_64-unknown-linux-musl.tar.gz" \
      | cut -d : -f 2,3 \
      | tr -d \" \
      | wget -qi -;

      tar -xvf zellij*.tar.gz;
      chmod +x zellij;
      mv zellij $HOME/.local/bin/;
  else
    echo "$HR Zellij already installed";
  fi
}

configure_zellij() {
  echo "$HR Configuring Zellij";
  ZELLIJ_DIR="$HOME/.config/zellij";
  mkdir -p $ZELLIJ_DIR;
  cp $(dirname "$0")/config.kdl $ZELLIJ_DIR;
  cp -r $(dirname "$0")/layouts $ZELLIJ_DIR;
}

install_zellij;
configure_zellij;