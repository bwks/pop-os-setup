#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

packages=(
  cpu-checker
  qemu-kvm
  libvirt-daemon-system
  libvirt-clients
  libvirt-dev
  bridge-utils
  virtinst
  virt-manager
)

echo "$HR Installing Packages";

for pkg in "${packages[@]}"; do
  install_package $pkg;
done

setup_user() {
  sudo usermod -aG kvm $USER;
  sudo usermod -aG libvirt $USER;
}
