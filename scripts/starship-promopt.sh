# https://starship.rs/

install_starship() {
  curl -sS https://starship.rs/install.sh | sh
}

configure_starship() {
  echo 'eval "$(starship init zsh)"' >> $HOME/.zshrc.starship
}