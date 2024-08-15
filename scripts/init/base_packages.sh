#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

packages=(
  curl
  wget
  gpg
  apt-transport-https
)

echo "$HR Installing Packages";

for pkg in "${packages[@]}"; do
  install_package $pkg;
done
