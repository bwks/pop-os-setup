#! /usr/bin/bash 

source $(dirname "$0")/../shared.sh;

# https://starship.rs/

install_starship() {
  if ! [[ -x "$(command -v starship)" ]]; then
    echo "$HR installing starship prompt";
    curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir ~/.local/bin --yes;
  else
    echo "$HR Starship already installed";
  fi
}

configure_starship() {
  echo "$HR configuring  starship prompt";
  cp $(dirname "$0")/starship.toml $HOME/.config/starship.toml
  echo 'eval "$(starship init zsh)"' > $HOME/.zshrc.local/starship_rc;
}

install_starship;
configure_starship;
