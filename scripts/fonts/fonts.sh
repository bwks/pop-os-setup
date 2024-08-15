#! /usr/bin/bash

source $(dirname "$0")/../shared.sh;

fonts=(
  CascadiaMono
  CodeNewRoman
  DroidSansMono
  FiraCode
  FiraMono
  JetBrainsMono
  RobotoMono
  SourceCodePro
  SpaceMono
  Ubuntu
  UbuntuMono
  VictorMono
)

FONTS_VERSION="3.2.1";
FONTS_DIR="${HOME}/.local/share/fonts";

if [[ ! -d "$FONTS_DIR" ]]; then
    mkdir -p "$FONTS_DIR";
fi

echo "$HR Installing Fonts";

for font in "${fonts[@]}"; do
  cd /tmp/;
  zip_file="${font}.zip";
  download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${FONTS_VERSION}/${zip_file}";
  echo "Downloading $download_url";
  wget "$download_url";
  unzip -n "$zip_file" -d "$FONTS_DIR";
  rm "$zip_file";
done

find "$FONTS_DIR" -name '*Windows Compatible*' -delete

fc-cache -fv