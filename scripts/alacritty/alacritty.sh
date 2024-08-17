#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

install_alacritty() {
  echo "$HR Installing Alacritty";
  if ! [[ -x "$(command -v alacritty)" ]]; then
      cd /tmp/;
      git clone https://github.com/alacritty/alacritty.git;
      cd alacritty;
      rustup override set stable;
      rustup update stable;
      cargo build --release;
      sudo tic -xe alacritty,alacritty-direct extra/alacritty.info;
      sudo cp target/release/alacritty /usr/local/bin/;
      sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg;
      sudo desktop-file-install extra/linux/Alacritty.desktop;
      sudo update-desktop-database;
  else
    echo "$HR Alacritty already installed";
  fi
}

configure_alacritty() {
  echo "$HR Configuring Alacritty";
  ALACRITTY_CONFIG_DIR=$HOME/.config/alacritty;
  mkdir -p $ALACRITTY_CONFIG_DIR;
  cp $(dirname "$0")/alacritty.toml $ALACRITTY_CONFIG_DIR;
  cp -r $(dirname "$0")/themes $ALACRITTY_CONFIG_DIR;
}

install_alacritty;
configure_alacritty;