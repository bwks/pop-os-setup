#! /usr/bin/bash

HR="=>"

install_zsh() {
  CMD="zsh"
  echo "$HR Checking if $CMD is installed";
  if ! [[ -x "$(command -v $CMD)" ]]; then
    echo "$HR $CMD is not currently installed.";
    echo "$HR Installing ZSH";
    sudo apt install -y $CMD;
  else
    echo "$HR $CMD is already installled";
  fi
}

configure_zsh() {
  ZSH_SHELL="/usr/bin/zsh";
  USER_SHELL=$(echo $SHELL);
  echo "$HR Checking user $USER shell";
  if ! [[ "$USER_SHELL" = "$ZSH_SHELL" ]]; then
    echo "$HR Users shell is $USER_SHELL"
    echo "$HR Updating $USER shell to $ZSH_SHELL";
    sudo chsh --shell $ZSH_SHELL $USER;
  else
    echo "$HR $USER shell is already $ZSH_SHELL";
  fi
}

# Oh My ZSH
# https://ohmyz.sh/
install_oh_my_zsh() {
  echo "$HR Checking if Oh My ZSH is installed";
  if ! [[ -d "$HOME/.oh-my-zsh" ]]; then
    echo "$HR Oh My ZSH is not curently installed.";
    echo "$HR Installing Oh My ZSH";
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  else
    echo "$HR Oh My ZSH is already installled";
  fi
}


install_zsh;
echo "";
configure_zsh;
echo "";
install_oh_my_zsh;
echo "";