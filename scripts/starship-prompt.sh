#! /usr/bin/bash 

source ./shared.sh;

# https://starship.rs/

install_starship() {
  echo "$HR installing starship prompt";
  curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir ~/.local/bin --yes;
}

configure_starship() {
  echo "$HR configuring  starship prompt";
  echo 'eval "$(starship init zsh)"' > $HOME/.zshrc.starship;
}

install_starship;
echo "";
configure_starship;
echo "";

