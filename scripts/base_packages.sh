#! /usr/bin/bash

source ./shared.sh

packages=(
  wget
  gpg
  apt-transport-https
)

echo "$HR Installing Packages";

for pkg in "${packages[@]}"; do
  install_package $pkg;
done
