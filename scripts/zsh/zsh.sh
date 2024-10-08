#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

cat << EOF > /some/filename
Some content
  indented content
more content
EOF

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

configure_zshrc() {
  echo "$HR Configuring zshrc";
  cat $(dirname "$0")/zshrc > $HOME/.zshrc
}



install_package zsh;
configure_zsh;
install_oh_my_zsh;
configure_zshrc;