#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

packages=(
  curl
  wget
  gpg
  apt-transport-https
  python3
  python3-pip
  python3-venv
  cmake
  pkg-config
  libfreetype6-dev
  libfontconfig1-dev
  libxcb-xfixes0-dev
  libxkbcommon-dev
  libegl1-mesa-dev
  unzip
  gnome-shell-extensions
  gnome-tweaks
  chrome-gnome-shell
  gtk2-engines-murrine
  libssl-dev
)

# add gnome-browser-connector instead of chrome-gnome-shell when 
# upgraded to 24.04
echo "$HR Installing Packages";

for pkg in "${packages[@]}"; do
  install_package $pkg;
done
